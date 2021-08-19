# Installation

## Windows
Choose one of the following options. The raylib installer is recommended if you only plan on playing with raylib. Othewise Visual Studio is recommended if you are interested in continuing to Unreal or other C++ projects.

### Raylib with MinGW Installer
* Download and install [raylib][] with the MinGW compiler.
* Download and install [CMake][] and select to add it to your `PATH` during installation.
* Add the `'raylib/mingw/bin'` folder to your PATH.
* Install [Visual Studio Code] and follow instructions [here](#VS-Code)
### Visual Studio Compiler
* Install [Visual Studio Community][] using the C++ workload. This will install the C++ compiler along with CMake.
* The course uses [Visual Studio Code][] as the editor of choice since it is cross platform. However you are free to use any IDE that supports CMake. You **MUST** install Community as described regardless of which editor you choose to use.
* It is recommended that you install raylib via [vcpkg][] however that is not required. If you don't then this project template will download raylib source code and build from source.

## macOS & Linux

* **[Linux only]** first make sure you have the dependencies for Homebrew installed
  ```
  sudo apt install curl build-essential git
  ```
* Invoke the following to install Homebrew
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
* **[Linux only]** After installation follow the on-screen instructions to add `brew` to your `PATH`.
* Install raylib and CMake using Homebrew
  ```
  brew install raylib cmake
  ```

# Setting up the project

After setting up the prerequisites download the zip and extract the folder within the zip to your user area.

## VS Code

You should install the following VS Code extensions

* [cpp-tools][]
* [cmake-tools][]

You then just need VS Code to open the folder extracted previously. Once loaded the extension should scan for compilers which you then need to select (GCC, Clang, or Visual Studio 2019 Release x86 (or amd64 for 64-bit)).

### Raylib w/ MinGW Installer users

If you have installed raylib to somewhere other than the default path `C:/raylib` you will need to edit the CMake cache variable `raylib_INSTALL_PATH` and reconfigure.

### vcpkg Users

You will need to set the `CMAKE_TOOLCHAIN_FILE` as instructed here https://github.com/microsoft/vcpkg#visual-studio-code-with-cmake-tools.
(There's a commented out entry in `vscode/settings.json` that you can just uncomment and edit).

---

IntelliSense and launch targets should be automatically configured. You can use the following keyboard shortcuts (these are editable in your settings - <kbd>Ctrl</kbd> + <kbd>K</kbd>, <kbd>Ctrl</kbd> + <kbd>S</kbd>).

* Build - <kbd>F7</kbd>
* Run with debugging - <kbd>Ctrl</kbd> + <kbd>F5</kbd>
* Run without debugging - <kbd>Shift</kbd> + <kbd>F5</kbd>

The last two should save and build before running. You can also use the tool bar at the bottom.

![2021-08-12 12_37_39-main cpp - template - Visual Studio Code](https://user-images.githubusercontent.com/2692096/129202914-c1fcef16-4ce7-417e-b186-8e45a66dbbd5.png)


If you plan on distributing your game you should switch to the release configuration and build and distrubute that.


## [Windows Only] Visual Studio Community

All you need to do is open the folder in Visual Studio which you can do via the File menu or the start page. If you installed raylib via [vcpkg] then it should automatically be configured to use the vcpkg toolchain.

Select the executable as the startup item using the drop down arrow and use <kbd>Ctrl</kbd> + <kbd>F5</kbd> to build and run without debugging or <kbd>F5</kbd> to build and debug.

[Visual Studio Community]: https://visualstudio.microsoft.com/vs/community/
[Visual Studio Code]: https://code.visualstudio.com/
[vcpkg]: https://vcpkg.io/
[raylib]: https://www.raylib.com/
[CMake]: https://cmake.org/download/
[cpp-tools]: https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools
[cmake-tools]: https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools
