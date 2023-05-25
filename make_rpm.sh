#!/bin/bash

#gcc-o имя бинрника
function prep_in_proj_dir (){
     mkdir hello-0.1
     cp *.cpp hello-0.1/
     tar -cf hello-0.1.tar.gz hello-0.1
     rm -rf hello-0.1


}
function add_cpp_into_sources (){ #Добавляет hello_rpm.cpp в SOURCES/
    #echo "move to SOURCE"
    rm -f ~/RPM/SOURCES/*
    rm -f ~/RPM/SPECS/*
    rm -f ~/RPM/BUILD/*
    cp ~/projects/test_projects/hello_rpm_proj/hello-0.1.tar.gz ~/RPM/SOURCES/
    cp ~/projects/test_projects/hello_rpm_proj/hello.spec ~/RPM/SPECS/


}


function tar_func (){
    #echo "tar"
    pushd ~/RPM/SOURCES/
   # mkdir hello-0.1
    #mv hello_rpm.cpp ./hello-0.1
    tar -cf hello-0.1.tar hello_rpm.cpp
    #rm -f hello_rpm.cpp
    popd

}



prep_in_proj_dir
add_cpp_into_sources #Добавляет hello_rpm.cpp в папку SOURCES/
rpmbuild -bb ./hello.spec

#tar_func #Архивирует папку  BUILD и дбавляет hello_rpm_tar.tar в папку RPM

