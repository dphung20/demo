package demo.web.helper;

import java.util.Set;

import org.springframework.stereotype.Component;

@Component
public class JspHelper {
	
	public static boolean contains(Set<Integer> items, Integer item) {
		return items.contains(item);
	}
}
