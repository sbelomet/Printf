/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sbelomet <marvin@42lausanne.ch>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/09 13:55:48 by sbelomet          #+#    #+#             */
/*   Updated: 2023/10/09 16:25:50 by sbelomet         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isprint(int c)
{
	return (c > 31 && c < 127);
}

/*
#include <stdio.h>
int	main(void)
{
	int	i = 0;
	while (i < 128)
	{
		printf("%d: %d\n", i, isprint(i));
		i++;
	}
}*/
