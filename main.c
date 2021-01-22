/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mac <mac@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/20 11:41:39 by iidzim            #+#    #+#             */
/*   Updated: 2021/01/22 23:22:43 by mac              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

//ft_strlen
int r;

r = ft_strlen("");
r = strlen("");

// r = ft_strlen("qwertyu");
// r = strlen("qwertyu");

printf("%zu\n", r);

//ft_strcmp
int r;

r = ft_strcmp("", "");
r = strcmp("", "");

// r = ft_strcmp("qwertyu", "qw");
// r = strcmp("qwertyu", "qw");

printf("%d\n", r);

//ft_strcpy
