.class public Lcom/android/camera/ui/PieItem;
.super Ljava/lang/Object;
.source "PieItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PieItem$OnClickListener;
    }
.end annotation


# instance fields
.field private level:I

.field private mAlpha:F

.field private mChangeAlphaWhenDisabled:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mOnClickListener:Lcom/android/camera/ui/PieItem$OnClickListener;

.field private mPath:Landroid/graphics/Path;

.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "level"    # I

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/android/camera/ui/PieItem;->mChangeAlphaWhenDisabled:Z

    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput p2, p0, Lcom/android/camera/ui/PieItem;->level:I

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 58
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/PieItem;->mEnabled:Z

    .line 59
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/camera/ui/PieItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    .line 86
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/camera/ui/PieItem;->mEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/camera/ui/PieItem;->mSelected:Z

    return v0
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mOnClickListener:Lcom/android/camera/ui/PieItem$OnClickListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mOnClickListener:Lcom/android/camera/ui/PieItem$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/PieItem$OnClickListener;->onClick(Lcom/android/camera/ui/PieItem;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/android/camera/ui/PieItem;->mAlpha:F

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 107
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/camera/ui/PieItem;->mEnabled:Z

    .line 111
    iget-boolean v0, p0, Lcom/android/camera/ui/PieItem;->mChangeAlphaWhenDisabled:Z

    if-eqz v0, :cond_0

    .line 112
    iget-boolean v0, p0, Lcom/android/camera/ui/PieItem;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 113
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const v0, 0x3e99999a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    goto :goto_0
.end method

.method public setImageResource(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 166
    iput-object v0, p0, Lcom/android/camera/ui/PieItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    iget v1, p0, Lcom/android/camera/ui/PieItem;->mAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 168
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "txt"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/PieItem;->mLabel:Ljava/lang/CharSequence;

    .line 63
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/ui/PieItem;->level:I

    .line 90
    return-void
.end method

.method public setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/PieItem$OnClickListener;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/ui/PieItem;->mOnClickListener:Lcom/android/camera/ui/PieItem$OnClickListener;

    .line 139
    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Path;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/ui/PieItem;->mPath:Landroid/graphics/Path;

    .line 94
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "s"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/camera/ui/PieItem;->mSelected:Z

    .line 126
    return-void
.end method
