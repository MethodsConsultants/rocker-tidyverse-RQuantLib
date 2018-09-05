# rocker-tidyverse-RQuantLib

A docker container with RStudio, the Tidyverse, and RQuantLib.

This is [`rocker/tidyverse`](https://hub.docker.com/r/rocker/tidyverse/) with the `libquantlib0-dev` apt package and the `RQuantLib` R package on top.


## Usage

To use this image, make sure to forward the RStudio port (8787) and set a password:

```bash
docker run -d -p 8787:8787 -e PASSWORD="somepassword" -e ROOT=TRUE  methodsconsultants/rocker-tidyverse-rquantlib
```

Then open a browser to `localhost:8787`, enter `rstudio` for the username and the password set above as the password. You should then be able to `library(RQuantLib)` without issue.

As `rocker/tidyverse` is based on `rocker/rstudio`, see [their wiki](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image) for more usage instructions, like setting a username or allowing root privelages.


