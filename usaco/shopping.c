/*
ID: sunsj121
LANG: C++
PROG: shopping
 */
#include <cstdio>
#include <cstdlib>
#include <cstring>

void readdata();
void work();
int stage1();
int stage2();
void output();

#define MIN(a,b) ((a) < (b) ? (a) : (b))
#define MAX(a,b) ((a) > (b) ? (a) : (b))

struct _offer
{
	int index[1001];
	int v;
}bonus[110];

int stuff[6],buy[6];
int dp[6][6][6][6][6];
int n_off, n_p;

void readdata()
{
	int i,j,num;
	int tmp;
	freopen("shopping.in","r",stdin);
	freopen("shopping.out","w",stdout);

	scanf("%d", &n_off);
	memset(bonus, 0, sizeof(bonus));

	for (i=0; i<n_off; ++i){
		scanf("%d", &num);
		for (j=0; j<num; ++j){
			scanf("%d", &tmp);
			scanf("%d", &bonus[i].index[tmp]);
		}
		scanf("%d", &bonus[i].v);
	}

	scanf("%d", &n_p);
	for (i=0; i<n_p; ++i){
		scanf("%d", &stuff[i]);
		scanf("%d", &buy[i]);
		scanf("%d", &bonus[n_off].v);
		bonus[n_off++].index[stuff[i]] = 1;
	}
}

void work()
{
	stage1();
	stage2();
}

int stage1()
{
	int m1,m2,m3,m4,m5;
	int i,j;
	int p1,p2,p3,p4,p5;

	for (m1=0; m1<=buy[0]; ++m1)
		for (m2=0; m2<=buy[1]; ++m2)
			for (m3=0; m3<=buy[2]; ++m3)
				for (m4=0; m4<=buy[3]; ++m4)
					for (m5=0; m5<=buy[4]; ++m5)
						dp[m1][m2][m3][m4][m5] = 0xffffff;

	dp[0][0][0][0][0] = 0;

	for (i=0; i<n_off; ++i){
		m1 = bonus[i].index[stuff[0]];
		m2 = bonus[i].index[stuff[1]];
		m3 = bonus[i].index[stuff[2]];
		m4 = bonus[i].index[stuff[3]];
		m5 = bonus[i].index[stuff[4]];

		for (p1=m1; p1<=buy[0]; ++p1){
			for (p2=m2; p2<=buy[1]; ++p2){
				for (p3=m3; p3<=buy[2]; ++p3){
					for (p4=m4; p4<=buy[3]; ++p4){
						for (p5=m5; p5<=buy[4];++p5){
							dp[p1][p2][p3][p4][p5] = MIN(dp[p1][p2][p3][p4][p5], dp[p1-m1][p2-m2][p3-m3][p4-m4][p5-m5]+bonus[i].v);
						}
					}
				}
			}
		}
	}
	return 0;
}

int stage2()
{
	return 0;
}

void output()
{
	printf("%d\n",dp[buy[0]][buy[1]][buy[2]][buy[3]][buy[4]]);
}

int main()
{

	readdata();
	work();
	output();

	return 0;
}
