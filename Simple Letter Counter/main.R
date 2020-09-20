sentence <- readline('Enter the sentence: ')
freq = c()
for (i in strsplit(sentence, split = '')[[1]]) {
	if (65 <= utf8ToInt(i) && utf8ToInt(i) <= 90) i = intToUtf8(utf8ToInt(i) + 32)
	if (i %in% names(freq)) freq[i] = freq[i] + 1
	else freq[i] = 1
}
for (i in 97:122) {
	i = intToUtf8(i)
	if (!(i %in% names(freq))) freq[i] = 0
	cat(i, ' -> ', freq[i], '\n')
}
plot(x = 1:26, y = freq[mapply(intToUtf8, 97:122)], type = 'l', xlab = 'Letters', ylab = 'Frequency', xaxt = 'n')
axis(side = 1, at = 1:26, labels = mapply(intToUtf8, 97:122))