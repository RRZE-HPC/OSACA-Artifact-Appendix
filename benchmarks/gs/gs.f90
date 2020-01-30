program heat

  implicit none
  integer :: NK,NI

  real*8 , allocatable, dimension(:,:,:) :: phi
  real*8 ws,we,cs,ce,eps,dt,dphimax,atime
  integer it,k,i,itmax,kmax,imax,t0,t1
  
  eps = 1.0d-12
  itmax = 50
  read (*,*) NI,NK
  kmax=NK
  imax=NI
  allocate(phi(0:imax,0:kmax,1:2))
  dt=1.d0
  t0=1
  t1=2

!$OMP PARALLEL DO schedule(static)
  do k=1,kmax-1
     do i=1,imax-1
        phi(i,k,t0)=0.d0
        phi(i,k,t1)=0.d0
     enddo
  enddo
!$OMP END PARALLEL DO

  do i=0,imax
     phi(i,kmax,:) = 1.d0
     phi(i,0,:) = 0.d0
  enddo
  do k=0,kmax
     phi(0,k,:) = dble(i)/NI
     phi(imax,k,:) = dble(i)/NI
!     phin(i,N) = 1.d0
!     phin(i,0) = 0.d0
!     phin(0,i) = dble(i)/N
!     phin(N,i) = dble(i)/N
  enddo

  atime = 0.d0
  itmax = 10
  do while(atime<0.2d0 .and. itmax < 1000000000)
  itmax = itmax * 2
!  print *, 'itmax = ',itmax
  call timing(ws,cs)

  ! iteration
  do it=1,itmax
     dphimax=0.d0
!$OMP parallel do private(i) reduction(max:dphimax) schedule(static)
     do k=1,kmax-1
        do i=1,imax-1
           phi(i,k,t0) = 0.25 * ( phi(i,k-1,t0)+ phi(i+1,k,t0)+  phi(i,k+1,t0)+  phi(i-1,k,t0))
!           dphimax = max(dphimax,abs(phi(i,k,t1)-phi(i,k,t0)))
        enddo
     enddo
!$OMP end parallel do
!     if(dphimax.lt.-1e-15) exit
     ! swap arrays
!     i = t0 ; t0=t1 ; t1=i

  enddo

  call timing(we,ce)
  atime = we-ws
  enddo

  if(it>itmax) it=itmax

  print *,'# Iterations: ', it,' Performance: ',DBLE(NI-1)*DBLE(NK-1)*DBLE(it)/(we-ws)/1.d6,' MLUPs'
  stop
  end
