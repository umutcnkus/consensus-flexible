### Tez

#### Giriş

- Yönlü çizge: G = (V, E, A) 

V = Nodelar = {1, 2, 3, ... p}

E = Edgeler, V*V

A = [$a_{ij}$], komşuluk matrisi, Head Node - Tail j -> Information flow j'den i'ye. Bu makale özelinde eğer komşuluk varsa 1 yoksa 0.

$N_{i}$ = i. agent'ın komşularının kümesi.

$d_i$ = in degree of i, $D_{in}$ = diag[$d{i}$]  in degree matrix.

L = laplacian = $D_{in}$ - A

$1_p$ = vector of dimension p all 1, $\bold{0}$ 0 matrix with competable size
$$
\dot{x}(t) = Ax(t) + \sum_{i=1}^{p}B_iU_i = Ax 	(t)+Bu(t) \\
y_i(t) = C_ix(t), i = 1,2,...,p \\
B = [B_1,  B_2,   \dots, B_p  ] \\
U = [{U^\intercal_1},  U^\intercal_2,   \dots, U^\intercal_p  ]
$$

- Section 3'de lazım olduğu için bu sistemi blok diagonal bir hale getirmemiz gerekiyor. Herhangi bir dönüşüm olabilir, örneğin jordan blokları olursa biliyoruz ki her zaman şöyle bir dönüşüm vardır:

$$
\Pi = [\Pi_1,\Pi_2, \dots, \Pi_l] \space\text{such that} \\
A\Pi_i = \Pi_i A_i \space and \space A\Pi = \Pi \tilde{A} \space \text{where} \\
\tilde{A} = 
	\begin{bmatrix} 
	A_1 & & \\\
	& \ddots \\
	& & A_l\space
	\end{bmatrix}
$$

- Bu problemde $ \Pi $ verilmiş varsayıyoruz ya da aşağıdaki şekilde kolayca bulunabilir:
  $$
  \tilde{A} = \Pi^{-1} A\Pi \space\text{is block diagonal}
  $$

- Lineer dönüşüm yaparsak:

$$
x = \Pi z = \sum_{i=1}^l \Pi_iZ_i \space \text{where} \space Z = [z_1 z_2\dots z_l]
$$

$$
\dot{z} = \tilde{A}z(t)+ \sum_{i=1}^pB_iu_i(t) \\
y_i(t) = C_i\Pi z(t)
$$

$$
V := \set{1,2,\dots, p} \space\text{number of nodes, agents} \\
S := \set{1,2,\dots, l} \space\text{number of jordan blocks}
$$

**Varsayım**
$$
C_{ij} := C_i \Pi_j \neq 0 \space \text{if and only if} \space z_j \space \text{is observable from the measurement} \space y_i
$$

Yani blok diagonalizasyon sonucunda elde edilen yapının kalman decompesed formda olması lazım.

- Observable set of agent i $O_i$ $C_{ij} \neq 0$, unobservable set tersi 
- Converse observable set of state  j $ D_j$ , İlk tanımda j. statei içeren setler.

**Varsayım 2**

- Tüm observable setlerin bileşimi S kümesini vermeli. Yani tüm statelerin gözlenebilir olduğu en az bir çıkış olmalı.

### Observer Tasarımı





