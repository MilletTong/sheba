!===============================================================================
!  S H E B A - Shear-wave Birefringence Analysis
!===============================================================================
!  This software is distributed in the hope that it will be useful,
!  but WITHOUT ANY WARRANTY; without even the implied warranty of
!  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
!===============================================================================
!
!  James Wookey, School of Earth Sciences, University of Bristol
!

!=======================================================================
      module event_info ! Utility module for F90/95 for SAC files
!=======================================================================      
      use array_sizes
      implicit none

!     ** DATA STRUCTURE FOR EVENT INFORMATION
         type event_info_type
            real*4 :: dist,az,baz ! event info
            real*4 :: tlag,dtlag,fast,dfast,spol,dspol ! splitting pars
            real*4 :: tlagXC,dtlagXC,fastXC,dfastXC ! XC splitting pars
            real*4 :: wbeg,wend ! best window
            real*4 :: snr ! signal-to-noise
            real*4 :: eigrat_orig,eigrat_corr
            integer :: ndf
            integer :: ibest ! best window number
            real*4 :: Quality ! AW quality factor (-1 -> 1)
            real*4 :: intensity ! splitting intensity as predicted from
                                ! the best fitting tlag, fast and spol.
!        ** other information
            real :: error_grid_tlag_int           
            real*4 :: lam1_raw(np1,np2int),lam2_raw(np1,np2int) 
         end type event_info_type     

         type (event_info_type),public :: event
 
!=======================================================================
      end module event_info
!=======================================================================
!     END OF event_info module
!=======================================================================
