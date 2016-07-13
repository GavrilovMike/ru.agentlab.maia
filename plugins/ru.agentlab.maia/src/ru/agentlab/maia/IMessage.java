/*******************************************************************************
 * Copyright (c) 2016 AgentLab.
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package ru.agentlab.maia;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Properties;
import java.util.UUID;

@SuppressWarnings("all")
public interface IMessage {

	UUID getSender();

	void setSender(UUID sender);

	List<UUID> getReceivers();

	void setReceivers(List<UUID> receivers);

	List<UUID> getReplyTo();

	void setReplyTo(List<UUID> replyTo);

	String getContent();

	void setContent(String content);

	byte[] getByteSequenceContent();

	void setByteSequenceContent(byte[] byteSequenceContent);

	String getReplyWith();

	void setReplyWith(String reply_with);

	String getInReplyTo();

	void setInReplyTo(String inReplyTo);

	String getEncoding();

	void setEncoding(String encoding);

	String getLanguage();

	void setLanguage(String language);

	String getOntology();

	void setOntology(String ontology);

	LocalDateTime getReplyBy();

	void setReplyBy(LocalDateTime replyByInMillisec);

	String getProtocol();

	void setProtocol(String protocol);

	String getConversationId();

	void setConversationId(String conversationId);

	Properties getUserDefinedProps();

	void setUserDefinedProps(Properties userDefinedProps);

	LocalDateTime getPostTimeStamp();

	void setPostTimeStamp(LocalDateTime postTimeStamp);

	String getPerformative();

	void setPerformative(String performative);
	
	IMessage createReply();
}
