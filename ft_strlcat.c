/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vahemere <vahemere@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/25 17:54:18 by vahemere          #+#    #+#             */
/*   Updated: 2021/11/08 23:29:00 by vahemere         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	size_t	i;
	size_t	j;
	size_t	res;

	i = 0;
	j = ft_strlen(dst);
	if (dstsize == 0)
		return (ft_strlen(src));
	else if (dstsize <= ft_strlen(dst))
		res = ft_strlen(src) + dstsize;
	else
		res = ft_strlen(src) + j;
	while (src[i] && (i + j) < dstsize - 1)
	{
		dst[i + j] = src[i];
		i++;
	}
	dst[i + j] = '\0';
	return (res);
}
