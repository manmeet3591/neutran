module types
    implicit none


    type tweights
        real :: weight
        real :: deltaweight
    end type tweights    
 
     type Neuron
       integer :: id
       real :: eta
       real :: alpha
       integer :: no
       real :: gradient, output
       type(tweights), dimension(:), allocatable :: outputWeights
    end type Neuron



  type Layer
        integer :: n
        type(Neuron), dimension(:), allocatable :: neurons
    end type Layer


  type Net
        real :: error
        integer :: lnum
        type(Layer), dimension(:), allocatable :: layers
  end type Net



    
end module types 
