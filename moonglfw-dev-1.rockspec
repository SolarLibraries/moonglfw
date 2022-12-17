package = "moonglfw"
version = "dev-1"
source = {
    url = "git+https://github.com/SolarLibraries/moonglfw.git"
}
description = {
    summary = "MoonGLFW is a Lua binding library for [GLFW](http://www.glfw.org/).",
    detailed = "MoonGLFW is a Lua binding library for [GLFW](http://www.glfw.org/).",
    homepage = "https://github.com/SolarLibraries/moonglfw",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.5"
}
local function platform(...)
    return {
        modules = {
            moonglfw = {
                sources = {
                    "src/callbacks.c",
                    "src/compat-5.3.c",
                    "src/context.c",
                    "src/cur.c",
                    "src/enums.c",
                    "src/getproc.c",
                    "src/hint.c",
                    "src/id.c",
                    "src/input.c",
                    "src/main.c",
                    "src/mon.c",
                    "src/monitor.c",
                    "src/native.c",
                    "src/utils.c",
                    "src/vulkan.c",
                    "src/win.c",
                    "src/window.c",
                },
    
                incdirs = {
                    "src",
                    "src/include"
                },

                defines = { ... }
            }
        },
        copy_directories = {
            "doc", "examples"
        }
    }
end

build = {
    type = "builtin",

    platforms = {
        mingw   = platform("MINGW"),
        macosx  = platform("MACOS"),
        linux   = platform("LINUX"),
    }
}
