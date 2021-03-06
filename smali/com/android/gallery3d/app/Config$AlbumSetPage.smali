.class public Lcom/android/gallery3d/app/Config$AlbumSetPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPage"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;


# instance fields
.field public labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field public paddingBottom:I

.field public paddingTop:I

.field public placeholderColor:I

.field public slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->placeholderColor:I

    .line 48
    new-instance v1, Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/SlotView$Spec;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 49
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0d001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 50
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0d0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 51
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v2, 0x7f0e00c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeightAdditional:I

    .line 54
    const v1, 0x7f0e00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    .line 55
    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingBottom:I

    .line 57
    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 58
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0e00c2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 60
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0e00c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 62
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0e00c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    .line 64
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0e00c5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    .line 66
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0e00c6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0e00c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 70
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0e00c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleRightMargin:I

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f0e00c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f090032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->backgroundColor:I

    .line 76
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f090033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v2, 0x7f090034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countColor:I

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/Config$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/gallery3d/app/Config$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumSetPage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-class v1, Lcom/android/gallery3d/app/Config$AlbumSetPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
