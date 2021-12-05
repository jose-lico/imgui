project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

	files
	{
		"include/imgui/imgui.cpp",
		"include/imgui/imgui_demo.cpp",
		"include/imgui/imgui_draw.cpp",
		"include/imgui/imgui_widgets.cpp",
		"include/imgui/imgui_tables.cpp",
		
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

	filter "configurations:MinSizeRelease"
		runtime "Release"
		optimize "On"