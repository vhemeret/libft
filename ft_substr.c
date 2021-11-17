/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vahemere <vahemere@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/05 09:38:08 by vahemere          #+#    #+#             */
/*   Updated: 2021/11/05 15:17:05 by vahemere         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*dest;
	char	*empt;
	size_t	i;

	i = 0;
	empt = malloc(sizeof(char) * 1);
	if (empt == NULL)
		return (NULL);
	if (!s)
		return (NULL);
	if (start >= ft_strlen(s))
		return (empt);
	dest = malloc(sizeof(char) * len + 1);
	if (dest == NULL)
		return (NULL);
	while (i < len && s[start])
	{
		dest[i] = s[start];
		start++;
		i++;
	}
	dest[i] = '\0';
	return (dest);
}
