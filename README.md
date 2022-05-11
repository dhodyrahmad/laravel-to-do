<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Laravel Hello World

Simple web application wrapped with Dockerfile and running on Kubernetes engine. This application just for test or study purpose so it may never been on development anymore.

Web application specification:
- **Laravel ^9.1**
- **PHP ^8.0**
- **Composer 2.3.5**
- **Docker Desktop 20.10.12**
- **Helm v3.5.0**
- **Kubernetes Desktop provided by Docker v1.22.5**

## Before we started!

Before we start the application, please install the required dependencies:

- **Git**
- **Composer**
- **Composer**
- **Docker**
- **Kubectl cli**
- **Helm Chart**

## How to ...

For running this web application follow this instructions:

1. Clone this repository
2. Switch branch to `solution/task1`
3. Build the image using `docker build . -t <image-name>:<image-tag>` or you can just run the `build_image.sh` script. For using bash script, you can either change the name by yourself or just run it with `sh build_image.sh`.  The default it will build as `dhodyrhmd/laravel-apache:v1`.
4. Go to `helm-chart` directory and running the application with `helm install <release-name> .`.
5. `helm list` to see if the helm release successful.
6. `kubectl get pods` to see if the pods runs well.

** you can skip step 4-6 by using `running_image.sh` script with `sh running_image.sh`. You can either change the name by update the script or it will deploy with default release name `laravel-webserver`**

7. Test the application by access with your browser on `localhost:80`

## Further Improvements

In real life, many Kubernetes resources that we can use to make the pod more reliability. Such as using Pod/Node Affinity for pod distribution across the Node, Pod Disruption Budget to specify maximum limit to the number of pod that can be unavailable simultaneously, and Autoscaler for increase the availability.
