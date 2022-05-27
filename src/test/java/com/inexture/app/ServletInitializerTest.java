package com.inexture.app;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.builder.SpringApplicationBuilder;

import com.inexture.UMSTask.ServletInitializer;
import com.inexture.UMSTask.UmsTaskApplication;


@ExtendWith(MockitoExtension.class)
public class ServletInitializerTest {

	@Mock
	private SpringApplicationBuilder springApplicationBuilder;

	@Test
	public void testIt() {
		ServletInitializer servletInitializer = new ServletInitializer();
		when(springApplicationBuilder.sources(UmsTaskApplication.class)).thenReturn(springApplicationBuilder);

		SpringApplicationBuilder result = servletInitializer.configure(springApplicationBuilder);

		verify(springApplicationBuilder).sources(UmsTaskApplication.class);
		assertEquals(springApplicationBuilder, result);
	}
}
