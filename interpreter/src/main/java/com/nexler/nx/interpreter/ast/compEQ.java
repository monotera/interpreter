package com.nexler.nx.interpreter.ast;

import java.util.Map;

public class compEQ implements ASTNode {
	private ASTNode operand1;
	private ASTNode operand2;
	
	
	
	public compEQ(ASTNode operand1, ASTNode operand2) {
		super();
		this.operand1 = operand1;
		this.operand2 = operand2;
	}



	@Override
	public Object execute(Map<String, Object> symbolTable) {
		return operand1.execute(symbolTable).equals(operand2.execute(symbolTable));
	}

}
