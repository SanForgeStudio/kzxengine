<html>
  
<img align="left" alt="kzx" src="https://www.kzxengine.com/kzx.png" width="100" style="vertical-align:top" />



# KZX Engine

<br/>
<br/>

The KZX Engine is a free to use 3D video game engine under a proprietary based software license wich is currently not open-source.

<br/>
<br/>

<img align="center" alt="kzx" src="https://www.kzxengine.com/editor2.png" width="400" style="vertical-align:top" />


<a href="#"><img alt="platforms" src="https://img.shields.io/badge/Version-4.0.2-sucess"/></a> 
<a href="#"><img alt="availabilty" src="https://img.shields.io/badge/Source%20Code-Unavailable-red"/></a>  
<a href="#"><img alt="status" src="https://img.shields.io/badge/Status-Released-green"/></a> 
<a href="https://kzxengine.com/KZX_Software_License__EULA.pdf"><img alt="platforms" src="https://img.shields.io/badge/License-Proprietary-orange"/></a>
<a href="#"><img alt="platforms" src="https://img.shields.io/badge/platforms-Windows-blue?style=flat-square"/></a>

<a href="https://discord.gg/bDJ2q6X5w6"><img src="https://img.shields.io/discord/622075717659656195.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2" height=30></img></a>

# 1. History of the KZX Engine?
## 1.1. About the KZX Engine
The KZX Engine is a branch of Grand Dog Studio wich was founded in 2014 in wich we already created a game engine called KZX however in 2020 we transferred our attention in using the Overload Engine as our framework in rebuilding the KZX Engine, As of now we are experimenting in re-creating alot of systems so we can bring KZX Back to its original roots.


# 2. What are our Goals?
Our primary goals for this project were:
- Understanding the workflow of the full game engine architecture and its back-end processes.
- Creating a game engine that is easily usable.
- Learning from this framework and extending our knowledge with it.
- Eventually making our own systemsframework with the knowledge we gained from our current framework.


# 3. Features?

  Current features:

    -. OpenGL Support
    -. Audio Files Support
    -. Lights with physical units (for directional, candelas for point and spot lights)
    -. Main Editor UI (Basic GUI for the KZX Engine)
    -. Custom extentions (.kzxproject, .kzxmat, .kzxscene)
    -. Physics (W, Colliders, Kinematics) Support
    -. Simple Trigger system
    -. Real-time material editor
    -. Component system
    -. Easy Project settings
    -. Vsync & Sampling
    -. Frustum culling Support
    -. Dynamic Based Lighting (No lighting build issues)
    -. Quick Launch, Build option
    -. Image file formats support
    -. Orthodontic Camera View (for 2D game support)
    -. Modular & Modern Game Editor
    -. Advanced Lua scripting
    -. Physically-based material rendering (AKA PBR)
    -. Custom material shaders support
    -. Windows build system for games
    -. Simple Profiling Tool
    -. Full 3D Sound System
    -. Simple and easy Rigidbody physics
    -. FBX, OBJ, DAE Model Support

 
Upcomming features:

    -. C# to Lua binding and to core translation(Luasharp workflow).
    -. Volumetric Lighting & Shadows.
    -. Volumetric Clouds & Gas.
    -. Vulkan Graphics Rendering Support
    -. RayTracing and Support (Realistic Reflections).
    -. Virtual Reality support with OpenVR.
    -. Physics Engine improvements.
    -. In-engine development testing tools for a professional testing enviroment.
    -. Atmospheric Fog and scattering.
    -. Terrain tool(W, Painting, Sculpting and foliage).
    -. Android Build Support.
    -. VR Build Support.
    -. Global Space Illumination.
    -. Skeletal Animation Support
    -. Custom game splashscreens.
    -. In-engine custom shader scripting
    -. Custom material shaders support
    -. Additional keybindings and fixes.
    -. Controller Support (Both in-engine and in-game).
    -. GPU Reduced Performance update.
    -. Integrated Post Processing.(Bloom, TAA, SSAO, DOF, etc).
    -. Linux Engine support.


# 4. Scripting

Some basic Lua scripting:
```lua

local helloworld =
{
}

function helloworld:OnStart()
  
  Debug.Log(tostring("Hello World :D"))

end

return helloworld

```
Output console result:

![image](https://user-images.githubusercontent.com/97965051/189537671-383f6092-64a0-4124-921e-49e456a6a4c4.png)


# 5. Core Dependencies?

Current:

- OpenGL with GLEW (Current Graphics API)
- GLFW (Windowing and inputs system)
- Assimp (3D model loader)
- Bullet3 (Physics)
- irrKlang (Audio)
- KZX Engine / Overload Engine (Systems Back-end Core)
- Tinyxml2 (XML Serializer)
- SOL2 (Lua binder)
- imGui (GUI and interfaces.)

Work In Progress:
- VULKAN (WIP)
- KZXTextureED (Texture Editor - WIP)
- KZX 2.0 Core System (Renewed Core Architecture for back-end processes and overall engine structure.)
- Monobinder (C# Binder - WIP)
- WebGL / HTML Build Supporting.

# 6. Specification Requirements?
KZX Engine minimum requirements:
- RAM: 512 MB
- Disk: 10 GB
- OS: Windows 7+ (64-Bit)
- GPU: Any Graphics card supporting OpenGL 4.3


# 7. Getting started?
Learn how to create your own games using the KZX Engine by visiting our [documentation](https://www.kzxengine.com/documentation/).


# 8. Licence?
The KZX Engine is under a Proprietary license, This Can be found [here](https://www.kzxengine.com/SLEULA.pdf

# 9. Thirdparty?
Because the KZX Engine uses the root/core systems as framework from the Overload Engine, we are still expanding towards re-creating our engine into our own.

# 10. Changelog?

See all the public releases [here](https://github.com/Grand-Dog-Studio/KZXEngine/releases)

<br/>
<br/>
</p>

</html>
