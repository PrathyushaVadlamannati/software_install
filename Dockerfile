# INSTALL JDK 1.8.0_131

FROM windows

RUN --name = AWS-CLI -it amazon/aws-cli

RUN -it amazon/aws-cli --version

RUN  md  /Java_Development_Kit_64bit_v8_Update_231

RUN cd /Java_Development_Kit_64bit_v8_Update_231

RUN -it -v ~/.aws:/root/.aws -v %cd%:/aws amazon/aws-cli s3 cp s3://jdk-64bit-v8-update-231/jdk_64bit_v8_Update_231/Java_Development_Kit_64bit_v8_Update_231.exe .
    	
RUN /Java_Development_Kit_64bit_v8_Update_231.exe /s ADDLOCAL="ToolsFeature,SourceFeature"

ENV JAVA_HOME="C:\Program Files\Java\Java_Development_Kit_64bit_v8_Update_231"

ENV PATH=$PATH:${JAVA_HOME}\bin

ENV CLASSPATH=$CLASSPATH:${JAVA_HOME}\lib



