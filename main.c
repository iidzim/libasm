/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iidzim <iidzim@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/20 11:41:39 by iidzim            #+#    #+#             */
/*   Updated: 2021/01/20 12:47:45 by iidzim           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//ft_strlen
int r;

r = ft_strlen("");
r = strlen("");

r = ft_strlen("qwertyu");
r = strlen("qwertyu");

printf("%d\n", r);

//ft_strcmp
int r;

r = ft_strcmp("", "");
r = strcmp("", "");

r = ft_strcmp("qwertyu", "qw");
r = strcmp("qwertyu", "qw");

printf("%d\n", r);

//ft_strcpy
