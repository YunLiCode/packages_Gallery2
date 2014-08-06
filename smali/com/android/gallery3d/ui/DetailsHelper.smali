.class public Lcom/android/gallery3d/ui/DetailsHelper;
.super Ljava/lang/Object;
.source "DetailsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;,
        Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;,
        Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;,
        Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;
    }
.end annotation


# static fields
.field private static sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;


# instance fields
.field private mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p2, "rootPane"    # Lcom/android/gallery3d/ui/GLView;
    .param p3, "source"    # Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct {v0, p1, p3}, Lcom/android/gallery3d/ui/DialogDetailsView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    .line 55
    return-void
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # I

    .prologue
    .line 103
    sparse-switch p1, :sswitch_data_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 105
    :sswitch_0
    const v0, 0x7f0b01f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_1
    const v0, 0x7f0b01f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_2
    const v0, 0x7f0b01f2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_3
    const v0, 0x7f0b01f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_4
    const v0, 0x7f0b01f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_5
    const v0, 0x7f0b01f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_6
    const v0, 0x7f0b01f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :sswitch_7
    const v0, 0x7f0b01f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_8
    const v0, 0x7f0b01f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_9
    const v0, 0x7f0b01f9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :sswitch_a
    const v0, 0x7f0b01fa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :sswitch_b
    const v0, 0x7f0b01fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :sswitch_c
    const v0, 0x7f0b01fc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :sswitch_d
    const v0, 0x7f0b01fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :sswitch_e
    const v0, 0x7f0b01fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :sswitch_f
    const v0, 0x7f0b01ff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :sswitch_10
    const v0, 0x7f0b0200

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :sswitch_11
    const v0, 0x7f0b0201

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    :sswitch_12
    const v0, 0x7f0b0202

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_e
        0x6b -> :sswitch_11
        0x6c -> :sswitch_12
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    .line 92
    :cond_0
    return-void
.end method

.method public static resolveAddress(Lcom/android/gallery3d/app/AbstractGalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p1, "latlng"    # [D
    .param p2, "listener"    # Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    .prologue
    .line 76
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    .line 81
    :goto_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    goto :goto_0
.end method

.method public static resolveResolution(Ljava/lang/String;Lcom/android/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/android/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;

    .prologue
    .line 85
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/DetailsHelper$ResolutionResolvingListener;->onResolutionAvailable(II)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->hide()V

    .line 100
    return-void
.end method

.method public layout(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    instance-of v1, v1, Lcom/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    check-cast v0, Lcom/android/gallery3d/ui/GLView;

    .line 60
    .local v0, "view":Lcom/android/gallery3d/ui/GLView;
    sub-int v1, p4, p2

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 62
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 64
    .end local v0    # "view":Lcom/android/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method

.method public reloadDetails()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->reloadDetails()V

    .line 68
    return-void
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 72
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->show()V

    .line 96
    return-void
.end method
