int life() {
  pipe(man);
  open(woman);
  if ((pid=fork())&lt;0)     /* failed to born */
      divorce(man, woman);
  else if (pid==0)       /* parent */
      sleep(1);
  else
      exec(newlife);     /* child */
  exit 0;
