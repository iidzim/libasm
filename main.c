/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iidzim <iidzim@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/20 11:41:39 by iidzim            #+#    #+#             */
/*   Updated: 2021/02/02 11:05:00 by iidzim           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int     main()
{

    printf("-------Ft_Strlen-------------\n\n");

    const char *s = "qwertyuio kjfjekje v ekjfekrjgekrger erkgkrejgkrjger gerkgjerkgner ";
    const char *s1 = "";
    printf("strlen == > %lu \n", strlen(s));
    printf("ft_strlen == > %zu \n", ft_strlen(s));

    printf("strlen == > %lu \n", strlen(s1));
    printf("ft_strlen == > %zu \n", ft_strlen(s1));
    
    printf("--------Ft_Strcmp-------------\n\n");
    
    printf("ft_strcmp_1 === > %d\n", ft_strcmp("YOOO", ""));
    printf("strcmp_1 === > %d\n", strcmp("YOOO", ""));

    printf("ft_strcmp_2 === > %d\n", ft_strcmp("YOOO", "YOOO"));
    printf("strcmp_2 === > %d\n", strcmp("YOOO", "YOOO"));

    printf("ft_strcmp_3 === > %d\n", ft_strcmp("YOOO", "AAAAABBBBCCCCCDDDDD"));
    printf("strcmp_3 === > %d\n", strcmp("YOOO", "AAAAABBBBCCCCCDDDDD"));
    
    printf("ft_strcmp_33 === > %d\n", ft_strcmp("AAAAABBBBCCCCCDDDDD", "YOOO"));
    printf("strcmp_33 === > %d\n", strcmp("AAAAABBBBCCCCCDDDDD", "YOOO"));

    printf("ft_strcmp_4 === > %d\n", ft_strcmp("", "AAAAABBBBCCCCCDDDDD"));
    printf("strcmp_4 === > %d\n", strcmp("", "AAAAABBBBCCCCCDDDDD"));

    printf("--------Ft_strcpy------------\n\n");
    
    const char *src = "kefjkewbf kjbfejkbjkfb";
    char        *dst;
    if (!(dst = (char *) calloc(sizeof(char), 1000)))
        return (-1);
    printf("strcpy_1 == > %s\n", strcpy(dst, src));
    printf("ft_strcpy_1 == > %s\n", ft_strcpy(dst, src));
    printf("ft_strlen == > %zu \n", ft_strlen(dst));

    printf("strcpy_2 ==> %s\n", strcpy(dst, ""));
    printf("ft_strcpy_2 ==> %s\n", ft_strcpy(dst, ""));
    printf("ft_strlen == > %zu \n", ft_strlen(dst));

    printf ("----------FT_write------------------\n\n");

    char *strr = "Hello world ii\n";
    int i = strlen(strr);
    printf("write return == > %zd errno ==> %d\n", write(-1, strr, i), errno);
    printf("write return == > %zd errno ==> %d\n", ft_write(-1, strr, i), errno);

    printf("write return == > %zd\n", write(1, strr, i));
    printf("write return == > %zd\n", ft_write(1, strr, i));

    printf("-----------Ft_read---------\n\n");
    
    int fd = open("main.c", O_RDONLY);
    char *str = calloc(sizeof(char) , 1000); 
    printf("==> %zd errno -> %d\n", read(fd, str, 500), errno);
    printf("==> %zd errno -> %d\n", ft_read(fd, str, 500), errno);
    free(str);
    
    printf ("----------Ft_strdup---------------\n\n");
    
    printf("strdup ==== > %lu\n", strlen(strdup("qwerty")));
    printf("ft_strdup ==== > %lu\n", strlen(ft_strdup("qwerty")));

    printf("strdup ==== > %s\n", strdup("wohfwohfoewhfeowfheowbfeowfeowfeowijfoew"));
    printf("strdup ==== > %s\n", ft_strdup("wohfwohfoewhfeowfheowbfeowfeowfeowijfoew"));

    printf("strdup ===== > %s\n", strdup(""));  
    printf("strdup ===== > %s\n", ft_strdup(""));  
    return (0);
}
