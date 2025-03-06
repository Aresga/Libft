/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_base.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agaga <agaga@student.hive.fi>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/15 12:17:31 by agaga             #+#    #+#             */
/*   Updated: 2025/02/26 17:21:03 by agaga            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/ft_printf.h"

int	ft_putnbr_base(unsigned long n, unsigned int base, int b)
{
	int		i;
	char	*symb;

	if (b == 1)
		symb = "0123456789";
	else if (b == 6)
		symb = "0123456789abcdef";
	else if (b == 7)
		symb = "0123456789ABCDEF";
	if (n < base)
		return (ft_putchar(symb[n]));
	else
	{
		i = ft_putnbr_base(n / base, base, b);
		return (i + ft_putnbr_base(n % base, base, b));
	}
}
