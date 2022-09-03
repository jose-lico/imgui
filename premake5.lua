project "ImGui"
	kind "StaticLib"
	language "C++"
	configmap {
        ["ReleaseNoImGui"] = "Release"
    }

	targetdir ("%{wks.location}/bin/" .. outputDir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputDir .. "/%{prj.name}")

	includedirs "include/imgui"

	files
	{
		"imgui.cpp",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_widgets.cpp",
		"imgui_tables.cpp",
		
		"include/imgui/imconfig.h",
		"include/imgui/imgui.h",
		"include/imgui/imgui_internal.h",
		"include/imgui/imstb_rectpack.h",
		"include/imgui/imstb_textedit.h",
		"include/imgui/imstb_truetype.h"
	}

	filter "system:windows"
		cppdialect "C++17"
		systemversion "latest"
		staticruntime "On"

	filter "system:linux"
		cppdialect "C++17"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
		