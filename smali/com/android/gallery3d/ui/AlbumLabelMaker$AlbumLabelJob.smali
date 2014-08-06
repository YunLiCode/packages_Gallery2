.class Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCount:Ljava/lang/String;

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "sourceType"    # I

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 140
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    .line 141
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v16

    .line 147
    .local v16, "s":Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 148
    .local v5, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 149
    .local v9, "count":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    # invokes: Lcom/android/gallery3d/ui/AlbumLabelMaker;->getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    invoke-static {v6, v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$200(Lcom/android/gallery3d/ui/AlbumLabelMaker;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 154
    .local v14, "icon":Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 155
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$300(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I

    move-result v15

    .line 156
    .local v15, "labelWidth":I
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapWidth:I
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapHeight:I
    invoke-static {v8}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 157
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-nez v12, :cond_0

    .line 160
    const/4 v13, 0x0

    .line 161
    .local v13, "borders":I
    add-int v6, v15, v13

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v7, v13

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 165
    .end local v13    # "borders":I
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x0

    invoke-virtual {v2, v6, v7, v8, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v6

    iget v6, v6, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->backgroundColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 171
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v12, 0x0

    .line 199
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v12

    .line 157
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v15    # "labelWidth":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 175
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "labelWidth":I
    :cond_2
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    add-int v3, v6, v7

    .line 178
    .local v3, "x":I
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 179
    .local v4, "y":I
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int v6, v15, v6

    sub-int/2addr v6, v3

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleRightMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$600(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 183
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    .line 184
    :cond_3
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleRightMargin:I

    sub-int v3, v15, v6

    .line 185
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 186
    sub-int v10, v15, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
    invoke-static {v6}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$700(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v11

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-static/range {v6 .. v11}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 190
    if-eqz v14, :cond_1

    .line 191
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v12, 0x0

    goto :goto_0

    .line 192
    :cond_4
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    int-to-float v6, v6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v17, v6, v7

    .line 193
    .local v17, "scale":F
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    int-to-float v6, v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v17

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 196
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v14, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
