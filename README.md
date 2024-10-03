<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** Using markdown "reference style" links for readability.
*** See the bottom of this document for the declaration of the reference variables.
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/jbirbal-skydom/termux-rustnride">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Android Termux Setup: Rust, JupyterLab, Code-Server, and OpenCV</h3>

  <p align="center">
    A comprehensive guide to setting up Rust, JupyterLab, Code-Server, and OpenCV on Android using Termux!
    <br />
    <a href="https://github.com/jbirbal-skydom/termux-rustnride"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/jbirbal-skydom/termux-rustnride">View Demo</a>
    ·
    <a href="https://github.com/jbirbal-skydom/termux-rustnride/issues">Report Bug</a>
    ·
    <a href="https://github.com/jbirbal-skydom/termux-rustnride/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

This project provides a step-by-step guide to setting up a powerful development environment on your Android device using Termux. With this setup, you can run the Rust programming language, JupyterLab for interactive computing, Code-Server (VS Code in the browser), and OpenCV for computer vision tasks directly on your Android device.

Here's why you might find this project useful:

* **Portability**: Carry a full-fledged development environment in your pocket.
* **Flexibility**: Run and test code on the go without needing a laptop.
* **Learning**: Experiment with Rust, data science tools, and computer vision anytime, anywhere.

This guide aims to simplify the installation process and get you up and running quickly.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

This setup utilizes the following technologies and tools:

* [![Termux][Termux-badge]][Termux-url]
* [![Rust][Rust-badge]][Rust-url]
* [![Jupyter][Jupyter-badge]][Jupyter-url]
* [![Code-Server][CodeServer-badge]][CodeServer-url]
* [![OpenCV][OpenCV-badge]][OpenCV-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Follow these instructions to set up the development environment on your Android device.

### Prerequisites

Ensure you have the following:

1. An Android device running Android 7.0 (Nougat) or higher.
2. Internet connection.
3. Termux app installed. You can get it from F-Droid or the official website.

### Installation

1. **Install Termux**

   Download and install Termux from [F-Droid](https://f-droid.org/en/packages/com.termux/) or the [Termux website](https://termux.com/).

2. **Update and Upgrade Packages**

   Open Termux and update the package lists:

       pkg update && pkg upgrade

3. **Install Essential Packages**

   Install necessary build tools and libraries:

       pkg install git wget curl build-essential  clang cmake openssl pkg-config libzmq libjpeg-turbo freetype libpng  zlib libxml2 fftw libandroid-execinfo libarrow-cpp ninja   libopenblas patchelf binutils-is-llvm nodejs

4. **Install Rust**

   Install Rust programming language:

       pkg install rust rust-analyzer rust-src rustc-dev rustc-src
      or

       curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
       source $HOME/.cargo/env

5. **Install JupyterLab**
   Install Python:

       pkg install python python-pip python-numpy python-static matplotlib libarrow-python 

   Install JupyterLab using pip:

       pip install jupyterlab
       pip install --upgrade jupyterlab jupyterlab-git

6. **Install Rust Kernal:**

   1. Evcxr project (EValuation ConteXt for Rust):

          cargo install --locked evcxr_jupyter
   2. Add the path variable to `.bashrc`:
   
          export PATH="$HOME/.cargo/bin:$PATH"
          source  ~/.bashrc

   3.  Install Kernal

           evcxr_jupyter --install


7. **Jupyer Modules**
     1. Panda:

       pip install -vv pandas

      2.  **Scikit**
          1.  Compilers: 

                  apt install lfortran
                  pip install pythran
                  pip install meson
                  pip install meson-python
                  pip install cython==3.0.10 
          2. Install after scipy, pandas, numpy and matplotlib 
             1. Scikit:

                    pkg install python-scipy
                <!-- 1. need to install pointless repo 
                        wget https://its-pointless.github.io/setup-pointless-repo.sh
                        bash setup-pointless-repo.sh
                        pkg update 
                1. Install
                        pkg install scipy
                        termux-chroot
                        pip install --update pip
                        pip install scikit-learn==0.19.2-->

             2. Other

                    pip install numpy
                    pip install pandas 

        pip install scikit-learn --no-build-isolation
        pip install scikit-image --no-build-isolation

      Other:

       pip install git+https://github.com/gtaylor/python-colormath.git
       pip install matplotlib
       pip install seaborn
       pip install ipympl
       pip install plotly

8. **Code-Server**

   1. Install code-server:

          pkg install code-server
   2. Spoof linux in android:
      1. Code serve will only operate as a webbrower unless it is a know playform e.g. linux.  `android-as-linux.js`:

              // android-as-linux.js
                Object.defineProperty(process, "platform", {
                  get() {
                    return "linux"
                  },
                })

   3. add rust-analyzer
      1. Add the setting to the workspace 
         `"rust-analyzer.server.path": "/data/data/com.termux/files/usr/bin/rust-analyzer"
`
   1. Start:

          NODE_OPTIONS='-r /data/data/com.termux/files/home/android-as-linux.js' code-server


9.  **Install OpenCV**

   Install OpenCV from source:

    pkg install opencv opencv-python

   *Note:* Building OpenCV from source on Termux can be complex due to dependencies. The `opencv` package in Termux may suffice for basic usage.

10. **Start JupyterLab and Code-Server**

   Start JupyterLab:

       export CFLAGS="-Wno-deprecated-declarations -Wno-unreachable-code -Wno-int-conversion"
       export MATHLIB="m"
       export LDFLAGS="-lpython3.11"
       export LD_PRELOAD="$LD_PRELOAD:/data/data/com.termux/files/usr/lib/libpython3.11.so.1.0"
       jupyter lab --ip=0.0.0.0 --port=8888 --no-browser

   Start Code-Server:

       code-server --bind-addr 0.0.0.0:8080

11. **Access from Browser**

   Open your device's browser and navigate to:

   - JupyterLab: `http://localhost:8888`
   - Code-Server: `http://localhost:8080`

   If accessing from another device on the same network, replace `localhost` with your Android device's IP address.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

With this setup, you can:

- **Develop Rust applications** directly on your Android device.
- **Use JupyterLab** for interactive programming and data analysis.
- **Run Code-Server** to use VS Code in the browser.
- **Perform computer vision tasks** using OpenCV.

### Example: Running a Rust Program

1. Create a new Rust project:

       cargo new hello_world
       cd hello_world

2. Edit the `main.rs` file using your preferred editor or Code-Server.

3. Build and run the project:

       cargo run

### Example: Using OpenCV in Python

1. Install OpenCV Python package:

       pip install opencv-python

2. Start JupyterLab and create a new Python notebook.

3. Import OpenCV and test:

   <pre><code class="language-python">
   import cv2
   print(cv2.__version__)
   </code></pre>

_For more examples and usage, please refer to the [OpenCV Documentation](https://docs.opencv.org/)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] Add support for GPU acceleration (if possible)
- [ ] Include instructions for setting up SSH access
- [ ] Automate the installation process with scripts
- [ ] Expand guide to include other programming languages

See the [open issues](https://github.com/jbirbal-skydom/termux-rustnride/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have suggestions to improve this guide, please fork the repo and create a pull request. You can also open an issue with the tag "enhancement".

Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Your Name - [@your_twitter](https://twitter.com/your_twitter) - email@example.com

Project Link: [https://github.com/jbirbal-skydom/termux-rustnride](https://github.com/jbirbal-skydom/termux-rustnride)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Termux Wiki](https://wiki.termux.com/)
* [Rust Programming Language](https://www.rust-lang.org/)
* [JupyterLab Documentation](https://jupyterlab.readthedocs.io/en/stable/)
* [Code-Server GitHub](https://github.com/coder/code-server)
* [OpenCV Documentation](https://docs.opencv.org/)
* [Termux on GitHub](https://github.com/termux)
* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Img Shields](https://shields.io)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/jbirbal-skydom/termux-rustnride.svg?style=for-the-badge
[contributors-url]: https://github.com/jbirbal-skydom/termux-rustnride/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jbirbal-skydom/termux-rustnride.svg?style=for-the-badge
[forks-url]: https://github.com/jbirbal-skydom/termux-rustnride/network/members
[stars-shield]: https://img.shields.io/github/stars/jbirbal-skydom/termux-rustnride.svg?style=for-the-badge
[stars-url]: https://github.com/jbirbal-skydom/termux-rustnride/stargazers
[issues-shield]: https://img.shields.io/github/issues/jbirbal-skydom/termux-rustnride.svg?style=for-the-badge
[issues-url]: https://github.com/jbirbal-skydom/termux-rustnride/issues
[license-shield]: https://img.shields.io/github/license/jbirbal-skydom/termux-rustnride.svg?style=for-the-badge
[license-url]: https://github.com/jbirbal-skydom/termux-rustnride/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/your_linkedin

[product-screenshot]: images/screenshot.png

[Termux-badge]: https://img.shields.io/badge/Termux-000000?style=for-the-badge&logo=android&logoColor=white
[Termux-url]: https://termux.com/

[Rust-badge]: https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white
[Rust-url]: https://www.rust-lang.org/

[Jupyter-badge]: https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=Jupyter&logoColor=white
[Jupyter-url]: https://jupyter.org/

[CodeServer-badge]: https://img.shields.io/badge/Code--Server-007ACC?style=for-the-badge&logo=visual-studio-code&logoColor=white
[CodeServer-url]: https://github.com/coder/code-server

[OpenCV-badge]: https://img.shields.io/badge/OpenCV-5C3EE8?style=for-the-badge&logo=OpenCV&logoColor=white
[OpenCV-url]: https://opencv.org/
