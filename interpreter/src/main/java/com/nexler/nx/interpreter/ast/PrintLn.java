package com.nexler.nx.interpreter.ast;

import java.util.Map;

public class PrintLn implements ASTNode {
	private ASTNode data;

	public PrintLn(ASTNode data) {
		super();
		this.data = data;
	}

	@Override
	public Object execute(Map<String, Object> symbolTable) {
		System.out.println(data.execute(symbolTable));
		return null;
	}

}
