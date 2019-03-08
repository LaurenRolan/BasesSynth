#include <fstream>
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <iostream>

#include "glApi.hpp"
#include "utils.hpp"

Buffer::Buffer(GLenum target) : m_location(0), m_target(target), m_attributeSize(0)
{
  glGenBuffers( 1, &m_location);
}

Buffer::~Buffer()
{
  glDeleteBuffers( 1, &m_location);
}

void Buffer::bind() const
{
  glBindBuffer(m_target, m_location);
}

void Buffer::unbind() const
{
  glBindBuffer(m_target, 0);
}

uint Buffer::attributeCount() const
{
  return m_attributeCount;
}

GLenum Buffer::attributeType() const
{
  return m_attributeType;
}

uint Buffer::attributeSize() const
{
  return m_attributeSize;
}

VAO::VAO(uint nbVBO) : m_location(0), m_vbos(nbVBO), m_ibo(GL_ELEMENT_ARRAY_BUFFER)
{
  assert(nbVBO <= GL_MAX_VERTEX_ATTRIBS); // You may want to replace 16 by the real hardware limitation

  glGenVertexArrays( 1, &m_location );

}

VAO::~VAO()
{
  glDeleteVertexArrays( 1, &m_location);
}

void VAO::bind() const
{
  glBindVertexArray( m_location );
}

void VAO::unbind() const
{
  glBindVertexArray(0);
}

void VAO::encapsulateVBO(unsigned int attributeIndex) const
{
    //enable the @p attributeIndex anchor point
  glEnableVertexAttribArray(attributeIndex);
    //bind the buffer to the OpenGL state
  m_vbos[attributeIndex]->bind();
   //store the formatting information for the @p attributeIndex anchor point
  glVertexAttribPointer(attributeIndex, m_vbos[attributeIndex]->attributeSize(), m_vbos[attributeIndex]->attributeType(), GL_FALSE, 0, 0);
    //reset the OpenGL state so that no VBO is left bound
  m_vbos[attributeIndex]->unbind();
}

std::shared_ptr<VAO> VAO::makeSlaveVAO() const
{
  unsigned int nbVBO = m_vbos.size();
  std::shared_ptr<VAO> slave(new VAO(nbVBO));
  slave->m_vbos = m_vbos;
  slave->bind();
  for (unsigned int attributeIndex = 0; attributeIndex < nbVBO; attributeIndex++) {
    slave->encapsulateVBO(attributeIndex);
  }
  slave->unbind();
  return slave;
}

void VAO::draw(GLenum mode) const
{
    bind();
    glDrawElements(mode, m_ibo.attributeCount(), m_ibo.attributeType(), 0);
    unbind();
}

Shader::Shader(GLenum type, const std::string & filename) : m_location(0)
{
    m_location = glCreateShader(type);
    std::string content = fileContent(filename);
    const char *c_str = content.c_str();
    const int l_str { content.size() };
    glShaderSource(m_location, 1, &c_str, &l_str);
    glCompileShader(m_location);
}

Shader::~Shader()
{
  glDeleteShader(m_location);
}

uint Shader::location() const
{
  return m_location;
}

Program::Program(const std::string & vname, const std::string & fname) : m_location(0), m_vshader(GL_VERTEX_SHADER, vname), m_fshader(GL_FRAGMENT_SHADER, fname)
{
    //allocate the GPU memory for the program
    m_location = glCreateProgram();

    //attach the fragment and vertex shaders
    glAttachShader(m_location, m_vshader.location());
    glAttachShader(m_location, m_fshader.location());
    //link the program
    glLinkProgram(m_location);
    //detach the fragment and vertex shaders (so they can be deleted)
    glDetachShader(m_location, m_vshader.location());
    glDetachShader(m_location, m_fshader.location());
 }

Program::~Program()
{
  glDeleteProgram(m_location);
}

void Program::bind() const
{
  glUseProgram(m_location);
}

void Program::unbind() const
{
  glUseProgram(0);
}

bool Program::getUniformLocation(const std::string & name, int & location) const
{
    location = glGetUniformLocation(m_location, name.c_str());
    return location != -1;
}

template <> void Program::uniformDispatcher(int location, const int & val)
{
    glUniform1i(location, val);
}

template <> void Program::uniformDispatcher(int location, const uint & val)
{
    glUniform1ui(location, val);
}

template <> void Program::uniformDispatcher(int location, const float & val)
{
   glUniform1f(location, val);
}

template <> void Program::uniformDispatcher(int location, const glm::vec2 & val)
{
    glUniform2f(location, val.x, val.y);
}

template <> void Program::uniformDispatcher(int location, const glm::vec3 & val)
{
    glUniform3f(location, val.x, val.y, val.z);
}

template <> void Program::uniformDispatcher(int location, const glm::vec4 & val)
{
    glUniform4f(location, val.x, val.y, val.z, val.w);
}

template <> void Program::uniformDispatcher(int location, const glm::mat2 & val)
{
    glUniformMatrix2fv(location, 1, false, glm::value_ptr(val));
}

template <> void Program::uniformDispatcher(int location, const glm::mat3 & val)
{
    glUniformMatrix3fv(location, 1, false, glm::value_ptr(val));
}

template <> void Program::uniformDispatcher(int location, const glm::mat4 & val)
{
    glUniformMatrix4fv(location, 1, false, glm::value_ptr(val));
}

bool Program::bound() const
{
  int currentProgram;
  glGetIntegerv(GL_CURRENT_PROGRAM, &currentProgram);
  return m_location == (GLuint)currentProgram;
}

Texture::Texture(GLenum target) : m_location(0), m_target(target)
{
    //At construction the GPU memory must be allocated, and the target must be recorded.
    glGenTextures(1, &m_location);
}

Texture::~Texture()
{
  // At destruction, GPU memory must be released.
    glDeleteTextures(1, &m_location);
}

void Texture::bind() const
{
  // binds this Texture to the current state (more precisely to the currently active texture)
  glBindTexture(m_target, m_location);
}

void Texture::unbind() const
{
  glBindTexture(GL_TEXTURE_2D, 0);
}

template <> void Texture::setData<GLubyte>(const Image<GLubyte> & image, bool mipmaps) const
{
    /* It should bind this texture, and send the data to it and then unbind the texture.
     * You should take care of calling the correct ::glTexImage function depending on
     * the texture target. You should at least handle GL_TEXTURE_2D and GL_TEXTURE_3D
     */
    bind();
    GLenum color;
    switch(image.channels) {
        case 1: color = GL_RED; break;
        case 2: color = GL_RG; break;
        case 3: color = GL_RGB; break;
        case 4: color = GL_RGBA; break;
    }
    if(m_target == GL_TEXTURE_2D) {
        glTexImage2D(GL_TEXTURE_2D, 0, color, image.width, image.height, 0, color, GL_UNSIGNED_BYTE, image.data);
    } else {
        glTexImage3D(GL_TEXTURE_3D, 0, color, image.width, image.height, image.depth, 0, color, GL_UNSIGNED_BYTE, image.data);
    }
    if(mipmaps)
        glGenerateMipmap(m_target);
    unbind();
}

Sampler::Sampler(int texUnit) : m_location(0), m_texUnit(texUnit)
{
  glGenSamplers(1, &m_location);
}

Sampler::~Sampler()
{
  glDeleteSamplers(1, &m_location);
}

void Sampler::bind() const
{
  glBindSampler(m_texUnit, m_location);
}

void Sampler::unbind() const
{
  glBindSampler(m_texUnit, 0);
}

void Sampler::attachToProgram(const Program & prog, const std::string & samplerName, BindOption bindOption) const
{
    if(bindOption != DoNotBind)
        prog.setUniform(samplerName, m_texUnit);
}

void Sampler::attachTexture(const Texture & texture) const
{
    glActiveTexture(m_texUnit);
    texture.bind();
}

template <> void Sampler::setParameter<int>(GLenum paramName, const int & value) const
{
  glSamplerParameteri(m_location, paramName, value);
}

template <> void Sampler::setParameter<float>(GLenum paramName, const float & value) const
{
  glSamplerParameterf(m_location, paramName, value);
}

void Sampler::enableAnisotropicFiltering() const
{
    float aniso = 0.0f;
    glGetFloatv(GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT, &aniso);
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAX_ANISOTROPY_EXT, aniso);
}
