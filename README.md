
# 💡 How to create an animated bar race ranking in R
Instructions with code of how to create a bar race ranking GIF animation in R like the one below:

![animated-bar-chart](https://github.com/SzymkowskiDev/animated-bar-race-ranking/blob/master/output.gif?raw=true)

Medium post available [here](https://medium.com/data-detective/animated-bar-race-ranking-in-r-e63440f149da).

## 📦 Dependencies
- [ggplot2](https://cran.r-project.org/web/packages/ggplot2/index.html)
- [gganimate](https://cran.r-project.org/web/packages/gganimate/index.html)
- [tweenr](https://cran.r-project.org/web/packages/tweenr/index.html)
- [magick](https://cran.r-project.org/web/packages/magick/index.html)
- [gifski](https://cran.r-project.org/web/packages/gifski/index.html)
- [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html)
- [magrittr](https://cran.r-project.org/web/packages/magrittr/index.html)
- [countrycode](https://cran.r-project.org/web/packages/countrycode/index.html)
- [grid](https://cran.r-project.org/web/packages/grid/index.html)
- [ggflags](https://github.com/ellisp/ggflags)

## 🧰 Troubleshooting
🚩 **ggflags not available on CRAN**

The package responsible for assigning flags to country codes called "ggflags" is not available on CRAN. That's why one needs to install it from GitHub repo. This can be accomplished using the line below:

``` devtools::install_github("ellisp/ggflags") ```

🚩 **devtools requires Rtools**

In order to install packages from GitHub, one needs a package called 'devtools'. It can be installed with command:

``` install.packages("devtools") ```

However, the installation of devtools needs to be preceeded by installation of 'Rtools', available [here](https://cran.r-project.org/bin/windows/Rtools/).

## 🔗 Related Projects
* [How to create Bar Race Animation Charts in R](https://www.r-bloggers.com/2020/01/how-to-create-bar-race-animation-charts-in-r/)
* [Inspiration](https://www.youtube.com/watch?v=5FI8c6znXDY&ab_channel=DataBAE)

## 📧 Contact
[![](https://img.shields.io/twitter/url?label=/SzymkowskiDev&style=social&url=https%3A%2F%2Ftwitter.com%2FSzymkowskiDev)](https://twitter.com/SzymkowskiDev) [![](https://img.shields.io/twitter/url?label=/kamil-szymkowski/&logo=linkedin&logoColor=%230077B5&style=social&url=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fkamil-szymkowski%2F)](https://www.linkedin.com/in/kamil-szymkowski/) [![](https://img.shields.io/twitter/url?label=@szymkowskidev&logo=medium&logoColor=%23292929&style=social&url=https%3A%2F%2Fmedium.com%2F%40szymkowskidev)](https://medium.com/@szymkowskidev) [![](https://img.shields.io/twitter/url?label=/SzymkowskiDev&logo=github&logoColor=%23292929&style=social&url=https%3A%2F%2Fgithub.com%2FSzymkowskiDev)](https://github.com/SzymkowskiDev)

## 📄 License
[MIT License](https://choosealicense.com/licenses/mit/) ©️ 2019-2020 [Kamil Szymkowski](https://github.com/SzymkowskiDev "Get in touch!")

[![](https://img.shields.io/badge/license-MIT-green?style=plastic)](https://choosealicense.com/licenses/mit/)





