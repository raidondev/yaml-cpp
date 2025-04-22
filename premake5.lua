project "yaml-cpp"
    kind "StaticLib"
    language "C++"

    targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
    objdir ("Intermediate/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"

    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
    systemversion "latest"
    cppdialect "C++20"
    staticruntime "On"

    filter "configurations:Debug"
 		runtime "Debug"
 		symbols "on"
 
 	filter "configurations:Release"
 		runtime "Release"
 		optimize "on"

    filter { "system:windows", "configurations:Release" }
        buildoptions { "/MT", "/utf-8" }
