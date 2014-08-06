.class public Lcom/android/camera/ui/RotatableLayout;
.super Landroid/widget/FrameLayout;
.source "RotatableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RotatableLayout$RotationListener;
    }
.end annotation


# instance fields
.field private mInitialOrientation:I

.field private mListener:Lcom/android/camera/ui/RotatableLayout$RotationListener;

.field private mPrevRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotatableLayout;->mListener:Lcom/android/camera/ui/RotatableLayout$RotationListener;

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotatableLayout;->mListener:Lcom/android/camera/ui/RotatableLayout$RotationListener;

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/RotatableLayout;->mListener:Lcom/android/camera/ui/RotatableLayout$RotationListener;

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    .line 51
    return-void
.end method

.method private static contains(II)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "mask"    # I

    .prologue
    .line 145
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static flip(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 236
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 237
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method public static isClockWiseRotation(II)Z
    .locals 1
    .param p0, "prevRotation"    # I
    .param p1, "currentRotation"    # I

    .prologue
    .line 130
    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 v0, v0, 0x168

    if-ne p0, v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rotate(Landroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isClockwise"    # Z

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateClockwise(Landroid/view/View;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/android/camera/ui/RotatableLayout;->rotateCounterClockwise(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static rotateClockwise(Landroid/view/View;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    .local v0, "gravity":I
    const/4 v7, 0x0

    .line 154
    .local v7, "ngravity":I
    const/4 v9, 0x3

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 155
    or-int/lit8 v7, v7, 0x30

    .line 157
    :cond_1
    const/4 v9, 0x5

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 158
    or-int/lit8 v7, v7, 0x50

    .line 160
    :cond_2
    const/16 v9, 0x30

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 161
    or-int/lit8 v7, v7, 0x5

    .line 163
    :cond_3
    const/16 v9, 0x50

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 164
    or-int/lit8 v7, v7, 0x3

    .line 166
    :cond_4
    const/16 v9, 0x11

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 167
    or-int/lit8 v7, v7, 0x11

    .line 169
    :cond_5
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 170
    or-int/lit8 v7, v7, 0x10

    .line 172
    :cond_6
    const/16 v9, 0x10

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 173
    or-int/lit8 v7, v7, 0x1

    .line 175
    :cond_7
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 176
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 177
    .local v4, "ml":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 178
    .local v5, "mr":I
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 179
    .local v6, "mt":I
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 180
    .local v3, "mb":I
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 181
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 182
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 183
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 184
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    .local v8, "width":I
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    .local v1, "height":I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static rotateCounterClockwise(Landroid/view/View;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 195
    .local v0, "gravity":I
    const/4 v7, 0x0

    .line 197
    .local v7, "ngravity":I
    const/4 v9, 0x5

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 198
    or-int/lit8 v7, v7, 0x30

    .line 200
    :cond_1
    const/4 v9, 0x3

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 201
    or-int/lit8 v7, v7, 0x50

    .line 203
    :cond_2
    const/16 v9, 0x30

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 204
    or-int/lit8 v7, v7, 0x3

    .line 206
    :cond_3
    const/16 v9, 0x50

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 207
    or-int/lit8 v7, v7, 0x5

    .line 209
    :cond_4
    const/16 v9, 0x11

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 210
    or-int/lit8 v7, v7, 0x11

    .line 212
    :cond_5
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 213
    or-int/lit8 v7, v7, 0x10

    .line 215
    :cond_6
    const/16 v9, 0x10

    invoke-static {v0, v9}, Lcom/android/camera/ui/RotatableLayout;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 216
    or-int/lit8 v7, v7, 0x1

    .line 218
    :cond_7
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 219
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 220
    .local v4, "ml":I
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 221
    .local v5, "mr":I
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    .local v6, "mt":I
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 223
    .local v3, "mb":I
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 224
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 225
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 226
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 227
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    .local v8, "width":I
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    .local v1, "height":I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 231
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected flipChildren()V
    .locals 5

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getChildCount()I

    move-result v1

    .line 118
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 119
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/RotatableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/RotatableLayout;->flip(Landroid/view/View;)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/RotatableLayout;->mListener:Lcom/android/camera/ui/RotatableLayout$RotationListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/RotatableLayout;->mListener:Lcom/android/camera/ui/RotatableLayout$RotationListener;

    const/16 v4, 0xb4

    invoke-interface {v3, v4}, Lcom/android/camera/ui/RotatableLayout$RotationListener;->onRotation(I)V

    .line 123
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 68
    .local v0, "currentOrientation":I
    iget v1, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    if-ne v1, v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    if-ne v1, v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/RotatableLayout;->rotateLayout(Z)V

    goto :goto_0

    .line 74
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/RotatableLayout;->mInitialOrientation:I

    if-ne v1, v2, :cond_0

    if-ne v0, v3, :cond_0

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/RotatableLayout;->rotateLayout(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 84
    .local v1, "rotation":I
    iget v2, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    sub-int v2, v1, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 85
    iput v1, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    invoke-static {v2, v1}, Lcom/android/camera/ui/RotatableLayout;->isClockWiseRotation(II)Z

    move-result v0

    .line 89
    .local v0, "clockwise":Z
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RotatableLayout;->rotateLayout(Z)V

    .line 90
    iput v1, p0, Lcom/android/camera/ui/RotatableLayout;->mPrevRotation:I

    goto :goto_0
.end method

.method protected rotateChildren(Z)V
    .locals 5
    .param p1, "clockwise"    # Z

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getChildCount()I

    move-result v1

    .line 108
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/RotatableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/camera/ui/RotatableLayout;->rotate(Landroid/view/View;Z)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/RotatableLayout;->mListener:Lcom/android/camera/ui/RotatableLayout$RotationListener;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/camera/ui/RotatableLayout;->mListener:Lcom/android/camera/ui/RotatableLayout$RotationListener;

    if-eqz p1, :cond_2

    const/16 v3, 0x5a

    :goto_1
    invoke-interface {v4, v3}, Lcom/android/camera/ui/RotatableLayout$RotationListener;->onRotation(I)V

    .line 113
    :cond_1
    return-void

    .line 112
    :cond_2
    const/16 v3, 0x10e

    goto :goto_1
.end method

.method protected rotateLayout(Z)V
    .locals 3
    .param p1, "clockwise"    # Z

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 96
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 97
    .local v2, "width":I
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    .local v0, "height":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/RotatableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/RotatableLayout;->rotateChildren(Z)V

    .line 104
    return-void
.end method
