.class public Lcom/android/gallery3d/gadget/WidgetConfigure;
.super Landroid/app/Activity;
.source "WidgetConfigure.java"


# static fields
.field private static MAX_WIDGET_SIDE:I

.field private static WIDGET_SCALE_FACTOR:F


# instance fields
.field private mAppWidgetId:I

.field private mPickedItem:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/high16 v0, 0x3fc00000

    sput v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    .line 60
    const/16 v0, 0x168

    sput v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    return-void
.end method

.method private setChoosenAlbum(Landroid/content/Intent;)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v8, "album-path"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "albumPath":Ljava/lang/String;
    new-instance v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 167
    .local v3, "helper":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    const/4 v7, 0x0

    .line 168
    .local v7, "relativePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/GalleryApp;

    .line 169
    .local v2, "galleryApp":Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    .line 170
    .local v4, "manager":Lcom/android/gallery3d/data/DataManager;
    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 171
    .local v6, "path":Lcom/android/gallery3d/data/Path;
    invoke-virtual {v4, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaSet;

    .line 172
    .local v5, "mediaSet":Lcom/android/gallery3d/data/MediaSet;
    instance-of v8, v5, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v8, :cond_0

    .line 173
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "bucketId":I
    invoke-static {v1}, Lcom/android/gallery3d/data/LocalAlbum;->getRelativePath(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    const-string v8, "WidgetConfigure"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting widget, album path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", relative path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "bucketId":I
    :cond_0
    iget v8, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v9, 0x2

    invoke-virtual {v3, v8, v9, v0, v7}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;Ljava/lang/String;)Z

    .line 182
    iget v8, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v8}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v3}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    .line 186
    return-void

    .line 184
    .end local v2    # "galleryApp":Lcom/android/gallery3d/app/GalleryApp;
    .end local v4    # "manager":Lcom/android/gallery3d/data/DataManager;
    .end local v5    # "mediaSet":Lcom/android/gallery3d/data/MediaSet;
    .end local v6    # "path":Lcom/android/gallery3d/data/Path;
    :catchall_0
    move-exception v8

    invoke-virtual {v3}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v8
.end method

.method private setChoosenPhoto(Landroid/content/Intent;)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 140
    .local v2, "res":Landroid/content/res/Resources;
    const v7, 0x7f0e00bb

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 141
    .local v6, "width":F
    const v7, 0x7f0e00bc

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 145
    .local v0, "height":F
    sget v7, Lcom/android/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    sget v8, Lcom/android/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    int-to-float v8, v8

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 148
    .local v3, "scale":F
    mul-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 149
    .local v5, "widgetWidth":I
    mul-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 151
    .local v4, "widgetHeight":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    .line 152
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    iget-object v9, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "outputX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scale"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "return-data"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 160
    .local v1, "request":Landroid/content/Intent;
    const/4 v7, 0x3

    invoke-virtual {p0, v1, v7}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method

.method private setPhotoWidget(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 127
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 128
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "helper":Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z

    .line 131
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    .line 135
    return-void

    .line 133
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v2
.end method

.method private setWidgetType(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const v2, 0x7f0a008c

    .line 189
    const-string v0, "widget-type"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 190
    const v1, 0x7f0a008a

    if-ne v0, v1, :cond_0

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/AlbumPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    :goto_0
    return-void

    .line 193
    :cond_0
    if-ne v0, v2, :cond_1

    .line 194
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 196
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;Ljava/lang/String;)Z

    .line 197
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->close()V

    throw v0

    .line 203
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/DialogPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .prologue
    .line 95
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 96
    .local v0, "manager":Landroid/appwidget/AppWidgetManager;
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v2, p1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->buildWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 97
    .local v1, "views":Landroid/widget/RemoteViews;
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 98
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "appWidgetId"

    iget v5, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 101
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 123
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 113
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setWidgetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 115
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setChoosenAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 117
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setChoosenPhoto(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 119
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setPhotoWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 70
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    if-ne v0, v2, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->finish()V

    .line 87
    :goto_0
    return-void

    .line 76
    :cond_0
    if-nez p1, :cond_2

    .line 77
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 81
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "widget-type"

    const v2, 0x7f0a008b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setWidgetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "picked-item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    goto :goto_0
.end method
