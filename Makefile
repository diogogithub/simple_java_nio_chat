JAVA = javac

RM = /bin/rm -f

all:
	#${JAVA} src/Message.java
	#${JAVA} src/Room.java
	#${JAVA} src/User.java
	${JAVA} src/ChatClient.java
	${JAVA} src/ChatServer.java

clean:
	${RM} *.class
	${RM} src/*.class
