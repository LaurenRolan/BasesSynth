#define GLM_FORCE_RADIANS
#include "PA2Application.hpp"
#include <glm/glm.hpp>
#include <GLFW/glfw3.h>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/constants.hpp>
#include <iostream>
#include "utils.hpp"

PA2Application::PA2Application(int windowWidth, int windowHeight)
    : Application(windowWidth, windowHeight, "Application for PA2"), m_vao(2), m_program("shaders/simple3d.v.glsl", "shaders/simple3d.f.glsl"), m_currentTime(0)
{
  makeA3dCube();
}

void PA2Application::makeA3dCube()
{
  std::vector<glm::vec3> positions = {{-0.5, -0.5, -0.5} /*0*/, {0.5, -0.5, -0.5} /*1*/, {0.5, 0.5, -0.5} /*2*/, {-0.5, 0.5, -0.5} /*3*/,
                                      {-0.5, -0.5, 0.5}  /*4*/, {0.5, -0.5, 0.5}  /*5*/, {0.5, 0.5, 0.5}  /*6*/, {-0.5, 0.5, 0.5}  /*7*/,
                                      {0.5, -0.5, -0.5}  /*1*/, {0.5, 0.5, -0.5}  /*2*/, {0.5, 0.5, 0.5}  /*6*/, {0.5, -0.5, 0.5}  /*5*/,
                                      {-0.5, -0.5, -0.5} /*0*/, {-0.5, 0.5, -0.5} /*3*/, {-0.5, 0.5, 0.5} /*7*/, {-0.5, -0.5, 0.5} /*4*/,
                                      {0.5, 0.5, -0.5}   /*2*/, {-0.5, 0.5, -0.5} /*3*/, {-0.5, 0.5, 0.5} /*7*/, {0.5, 0.5, 0.5}   /*6*/,
                                      {-0.5, -0.5, -0.5} /*0*/, {0.5, -0.5, -0.5} /*1*/, {0.5, -0.5, 0.5} /*5*/, {-0.5, -0.5, 0.5} /*4*/};
  std::vector<glm::vec3> colors = {{1, 1, 0}, {1, 1, 0}, {1, 1, 0}, {1, 1, 0}, // a single yellow color
                                   {1, 0, 1}, {1, 0, 1}, {1, 0, 1}, {1, 0, 1}, // a single magenta color
                                   {0, 0, 1}, {0, 0, 1}, {0, 0, 1}, {0, 0, 1}, // blue
                                   {1, 0, 0}, {1, 0, 0}, {1, 0, 0}, {1, 0, 0}, // red
                                   {0, 1, 1}, {0, 1, 1}, {0, 1, 1}, {0, 1, 1}, // ciano
                                   {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, // green
                                  };
  std::vector<uint> ibo = {0, 1, 2, 0, 2, 3,       4, 5, 6, 4, 6, 7,
                           8, 9, 10, 8, 10, 11,    12, 13, 14, 12, 14, 15,
                           16, 17, 18, 16, 18, 19,  20, 21, 22, 20, 22, 23};
  m_vao.setVBO(0, positions);
  m_vao.setVBO(1, colors);
  m_vao.setIBO(ibo);
}

void PA2Application::renderFrame()
{
  glClearColor(1, 1, 1, 1);
  glClear(GL_COLOR_BUFFER_BIT);
  m_program.bind();

  glm::mat4 mvp(1.0);
  mvp = glm::rotate(mvp, m_currentTime, glm::vec3(1.0,1.0,0.0));
  mvp = glm::scale(mvp, glm::vec3(0.2,0.2,0.2));
  mvp = glm::rotate(mvp, 0.45f, glm::vec3(1.0,1.0,0.0));

  m_program.setUniform("mvp", mvp);
  m_vao.draw(); // rendering first instance

  mvp = glm::translate(mvp, glm::vec3(0.75, 0.75, 0.75));
  m_program.setUniform("mvp", mvp);
  m_vao.draw(); // rendering second instance
  m_program.unbind();
}

void PA2Application::update()
{
  m_currentTime = glfwGetTime();
  m_program.bind();
  m_program.setUniform("time", m_currentTime);
  m_program.unbind();
}

void PA2Application::resize(GLFWwindow *, int framebufferWidth, int framebufferHeight)
{
  glViewport(0, 0, framebufferWidth, framebufferHeight);
}

void PA2Application::setCallbacks()
{
  GLFWwindow * window = glfwGetCurrentContext();
  glfwSetFramebufferSizeCallback(window, PA2Application::resize);
}

void PA2Application::usage(std::string & shortDescritpion, std::string & synopsis, std::string & description)
{
  shortDescritpion = "Application for programming assignment 2";
  synopsis = "pa2";
  description = "  An application on GLSL uniform variables and true 3D meshes.\n";
}
