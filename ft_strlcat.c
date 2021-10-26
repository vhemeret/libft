/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vahemere <vahemere@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/25 17:54:18 by vahemere          #+#    #+#             */
/*   Updated: 2021/10/25 19:16:06 by vahemere         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	size_t	i;
	size_t	j;

	i = -1;
	if (dstsize < ft_strlen(dst))
		return (ft_strlen(src) + dstsize);
	j = ft_strlen(dst) - 1;
	while (src[++i] && ++j < (dstsize - 1))
		dst[j] = src[i];
	dst[j] = '\0';
	return (ft_strlen(dst) + i);
}
