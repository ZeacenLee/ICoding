package com.iCoding.domain;

public class Code {
	private int qid;
	private String questionTitle;
	private String questionDescription;
	private String inputFormat;
	private String outputFormat;
	private String inputSample;
	private String outputSample;
	private String code;
	private String codeType;
	private int uid;
	private String username;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCodeType() {
		return codeType;
	}
	public void setCodeType(String codeType) {
		this.codeType = codeType;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getQuestionTitle() {
		return questionTitle;
	}
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	public String getQuestionDescription() {
		return questionDescription;
	}
	public void setQuestionDescription(String questionDescription) {
		this.questionDescription = questionDescription;
	}
	public String getInputFormat() {
		return inputFormat;
	}
	public void setInputFormat(String inputFormat) {
		this.inputFormat = inputFormat;
	}
	public String getOutputFormat() {
		return outputFormat;
	}
	public void setOutputFormat(String outputFormat) {
		this.outputFormat = outputFormat;
	}
	public String getInputSample() {
		return inputSample;
	}
	public void setInputSample(String inputSample) {
		this.inputSample = inputSample;
	}
	public String getOutputSample() {
		return outputSample;
	}
	public void setOutputSample(String outputSample) {
		this.outputSample = outputSample;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@Override
	public String toString() {
		return "SaveCode [id=" + qid + ", questionTitle=" + questionTitle + ", questionDescription="
				+ questionDescription + ", inputFormat=" + inputFormat + ", outputFormat=" + outputFormat
				+ ", inputSample=" + inputSample + ", outputSample=" + outputSample + ", code=" + code + "]";
	}

	
}
