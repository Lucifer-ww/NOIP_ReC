#include <stdio.h>

//

#define max_dana 100

//

int main(void)
{
  int i;
  int broj_dana;
  int tecaj[max_dana];

  double dolara;

  scanf("%d",&broj_dana);

  for (i = 0;i < broj_dana;++i)
    scanf("%d",tecaj + i);

  //

  dolara = 100;

  for (i = 0;i < broj_dana - 1;++i)
    if (tecaj[i] > tecaj[i + 1])
      dolara *= (double) tecaj[i] / tecaj[i + 1];

  printf("%.2lf\n",dolara);

  return 0;
}

