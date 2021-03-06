package com.difusores.supermercado.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.StringTokenizer;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadService {
	public String save(MultipartFile image){
		String resultado = null;
		boolean diretorio = false;
		
		if(image.getSize() > 2000000)
			return "Imagem excede o Tamanho Máximo permitido.";
 
		try {
			resultado = Long.toString(System.currentTimeMillis());
			resultado = resultado.substring(resultado.length() - 6);
			String extensao = image.getOriginalFilename();
			
			StringTokenizer token = new StringTokenizer(extensao, ".");
			token.nextToken();
			
			resultado += ("." + token.nextToken());
			
			File file = new File("images");
			if(!file.exists())
				file.mkdir();
			
			String absolutePath = file.getAbsolutePath();
			
			resultado = absolutePath + "/" + resultado;
			file = new File(resultado);
			FileOutputStream fop = new FileOutputStream(file);
 
			byte[] contentInBytes = image.getBytes();
 
			fop.write(contentInBytes);
			fop.flush();
			fop.close();
 
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return resultado;
	}
	
	public boolean delete(String image){
		try{
			File file = new File("/images/" + image);
			
			return file.delete();
		} catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
	}

}
