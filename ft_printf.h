/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kboulkri <kboulkri@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/04 20:54:52 by kboulkri          #+#    #+#             */
/*   Updated: 2023/09/05 18:08:46 by kboulkri         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <stdio.h>
# include <unistd.h>

char			*ft_strchr(const char *s, int c);
void			ft_convert_base(unsigned long nbr, char param, int *len);
void			ft_putnbr_base(unsigned long nbr, char *base, int *len);
void			go_search(va_list args, const char *str, int *len);
int				ft_printf(const char *str, ...);
int				ft_putchar(char c);
void			ft_putstr(char *str, int *len);
void			ft_putnbr(int n, int *len);
unsigned long	ft_strlen(char *str);

#endif