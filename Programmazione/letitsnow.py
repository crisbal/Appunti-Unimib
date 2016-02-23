import random
import time 
import os

def printMx(mx):
	for i in range(len(mx)):
		for j in range(len(mx[i])):
			print(mx[i][j], end="") #stampa la cella
		print() #vai a capo


def updateMx(mx):
	for i in range(len(mx)):
		for j in range(len(mx[i])):
			if mx[i][j] == '*':
				mx[i][j] = '#' #deve ancora cedere

	for i in range(0, len(mx)):
		i = len(mx)-1-i
		for j in range(0, len(mx[i])):
			if mx[i][j] == '#' and i!=len(mx)-1:
				#potrebbe cadere
				#controllo sotto
				if mx[i+1][j] != '*' and mx[i+1][j] != '#':
					mx[i+1][j] = '*'
					mx[i][j] = ' '
	return mx

mx = [[' ' for i in range(20)] for j in range(10)] #creo matrice 20 colonne 10 righe

while True:
	print("\033c"); #pulisce lo schermo
	col = random.randrange(0,len(mx[0])) #indice random
	mx[0][col] = '*' #metti la neve all'indice random
	printMx(mx) #stampa la matrice
	mx = updateMx(mx) #aggiorna la matrice


