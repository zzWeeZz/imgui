project "ImGui"
kind "StaticLib"
language "C++"
staticruntime "off"

targetdir("../Binaries/" .. OutputDir .. "/%{prj.name}")
objdir("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

includedirs
{
    VULKAN_INCLUDE,
    "../imgui/"
}

files
{
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_tables.cpp",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp",
    "backends/imgui_impl_vulkan.h",
    "backends/imgui_impl_vulkan.cpp",
    "backends/imgui_impl_sdl.h",
    "backends/imgui_impl_sdl.cpp",
    "misc/cpp/imgui_stdlib.h",
    "misc/cpp/imgui_stdlib.cpp"
}

filter "system:windows"
systemversion "latest"
cppdialect "C++20"
toolset "clang"

filter "system:linux"
pic "On"
systemversion "latest"
cppdialect "C++20"
toolset "clang"

filter "configurations:Debug"
runtime "Debug"
symbols "on"

filter "configurations:Release"
runtime "Release"
optimize "on"

filter "configurations:Dist"
runtime "Release"
optimize "on"
symbols "off"
