**What are some of the key design philosophies of the Linux operating system?**
The Unix philosophy is a minimalist approach to development. It has a strong leaning towards simple, short, and clear code that can be maintained and reused. Here are some key philosophies:
-each program should do one thing
-programs should work together (modularity)
-divide front-end interface and back-end engine
-write clear programs that other developers can read
-write code that is flexible, so that it can be used for other purposes than you intended
-build a prototype early on to start testing as soon as possible


**In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**
A VPS, or a Virtual Machine (VM) is its own virtual operating system that stores its own files. The user perceives this server as a dedicated/private server, but it is installed on a physical computer somewhere else that is built to host multiple operating systems. A multitude of software can be installed on this VPS, and it can be accessed from other computers.

Some benefits
-greener technology (a larger dedicated server is split into different virtual environments, rather than having one server per user)
-control (you have complete root access to your VPS)
-scalability as needed (you can upgrade or downgrade the size of your server as needed)
-relatively cheap
-stability (you have your own server - you don't share it with others' websites. No chance of their websites affecting yours in any way)

**Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**
The root user is the superuser, and should be used for administrative tasks only. If you use it to install and run programs, you are putting your programs at risk (and even your hardware). Working on the root user means that if that information is accidentally or unintentionally wiped, it can cause irreparable harm to your programs.

You don't want people to be able to change your **system** files that are accessible via the root user. If the root user's system was wiped entirely, there's no going back, and this could also cause harm to the hardware.