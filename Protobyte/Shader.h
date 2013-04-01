//
//  Shader.h
//  Protobyte Library V01
//
//  Created by Ira Greenberg on 8/2/11.
//  Copyright 2011 SMU. All rights reserved.
//
// Library Usage:
// This work is licensed under the Creative Commons 
// Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
// To view a copy of this license, visit 
// http://creativecommons.org/licenses/by-nc-sa/3.0/ 
// or send a letter to Creative Commons, 
// 444 Castro Street, Suite 900, 
// Mountain View, California, 94041, USA.
//

#ifndef Protobyte_Library_V01_Shader_h
#define Protobyte_Library_V01_Shader_h

#ifdef  __linux__ 
  #include <GL/glew.h>
  #include <GL/gl.h>
  #define GL_GLEXT_PROTOTYPES
  #include <GL/glext.h>
#elif defined _WIN32
  #include <GL/glew.h>
  #include <GL/gl.h>
  #define GL_GLEXT_PROTOTYPES
  #include <GL/glext.h>
#elif defined __APPLE__ || __MACH__
  //#include <OpenGL/GLEW.h>
  #include <OpenGL/gl.h>
#endif


#include <stdlib.h>
#include <stdio.h> // for File input
#include <string>

class Shader {
    
public:
	Shader();
	Shader(const char *vsFile, const char *fsFile);
	~Shader();
	
    void init(const char *vsFile, const char *fsFile);
    
	void bind();
	void unbind();
	
	unsigned int id();
	
private:
	unsigned int shader_id;
	unsigned int shader_vp;
	unsigned int shader_fp;
    
};


#endif
