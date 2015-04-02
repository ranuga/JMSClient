package com.rajesh.integration.client;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

@Service
public class ClientQueueSender {

    @Autowired
    @Qualifier("jmsProducerTemplate")
    private JmsTemplate jmsTemplate;

    public void setJmsTemplate(JmsTemplate jmsTemplate) {
        this.jmsTemplate = jmsTemplate;
    }


    public void sendMesage() {
        MessageCreator messageCreator=new MessageCreator() {
            public Message createMessage(Session session) throws
                    JMSException {
                return session.createTextMessage("I am sending Invoice message");
            }
        };

        jmsTemplate.send("jms/testQueue", messageCreator);
    }
}
