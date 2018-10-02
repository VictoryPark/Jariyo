package com.jariyo.common.file;

import java.io.File;
import java.util.UUID;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class JariyoFileRenamePolicy implements FileRenamePolicy {

	// FileRenamePolicy 인터페이스에는 딱 하나의 메서드가 있는데 그것이 rename!
	@Override
	public File rename(File f) {
		// c:/app/upload/2018/09/06/12/a.jpg -- 확장자는 유지하고 a라는 파일 이름만 바꿀거다.
		// 파일명을 뺀 부모경로를 받을 수 있다.
		String parent = f.getParent(); // c:/app/upload/2018/09/06/12/
		String name = f.getName(); // a.jpg
		String ext = "";
		// split, substring, indexOf
		int index = name.lastIndexOf(".");
		
		if (index != -1) {
			ext = name.substring(index);
		} // if
		
		// 이게 랜덤으로 문자와 숫자를 조합하여 아무글이나 생성하는 것.
		// 인터넷에서 사진 다운받으면 아무렇게나 지어진 이름으로 파일이 다운받아지는데 이것 덕분이다.
		String uName = UUID.randomUUID().toString();
		
		// return에 오는 것은 파일의 이름을 리네임해준다.
		return new File(parent, uName + ext );
	} // rename method

} // end class
