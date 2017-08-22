package skhu.controller;

import java.io.File;
import java.util.UUID;

public class SkhuFileNamePloyci {
	
	@Override
	public File rename(File f) {
		String name = f. getName();
		String ext="";
		int dot =name.lastIndexOf(".");
		
		if(dot !=-1) {
			ext = name.substring(dot);
		} else {
			ext = "";
		}
		String str = "skhu" + UUID.randomUUID();
		File renameFile = new File(f.getParent(), str, str);
		
		return renameFile;
	}
}