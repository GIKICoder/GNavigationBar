# GNavigationBar
A custom navigationBar.Easy to use

Features
==============
- 1.自定义导航栏.方便在项目中使用.
- 2.可以扩展不同的创建按钮的工厂方法.
- 3.按钮自动排列布局. 中间title自动居中.
- 4.类似原生API.使用方便友好

Usage
==============
## 1.可在基类控制器中创建
```objc
    self.navigationBar = [GNavigationBar initNavigationBar];
    [self.view addSubview:self.navigationBar];
    self.navigationBar.backgroundColor = [UIColor colorWithRed:248.0/255.0 green:249.0/255.0 blue:250.0/255.0 alpha:1];
```
```- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [self.view bringSubviewToFront:self.navigationBar];
}
```
## 2.按钮创建以及使用

```objc
    GNavigationItem *back = [GNavItemFactory createImageButton:[UIImage imageNamed:@"back01"] highlightImage:nil target:self selctor:@selector(back)];
    self.navigationBar.leftNavigationItem = back;

    self.navigationBar.title = @"导航栏中间的text";

    GNavigationItem *close = [GNavItemFactory createImageButton:[UIImage imageNamed:@"close01"] highlightImage:[UIImage imageNamed:@"close02"] target:self selctor:@selector(back)];
    [self.navigationBar addLeftItem:close];

    GNavigationItem *more = [GNavItemFactory createTitleButton:@"按钮" titleColor:[UIColor blackColor] highlightColor:[UIColor redColor] target:self selctor:@selector(more)];
    GNavigationItem *more2 = [GNavItemFactory createTitleButton:@"按钮2" target:self selctor:@selector(more)];
    self.navigationBar.rightNavigaitonItems = @[more,more2];

```

