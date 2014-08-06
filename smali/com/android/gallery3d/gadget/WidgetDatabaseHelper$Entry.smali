.class public Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
.super Ljava/lang/Object;
.source "WidgetDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public albumPath:Ljava/lang/String;

.field public imageData:[B

.field public imageUri:Ljava/lang/String;

.field public relativePath:Ljava/lang/String;

.field public type:I

.field public widgetId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x2

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    .line 80
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    .line 81
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    if-nez v0, :cond_1

    .line 82
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    .line 83
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    .line 86
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->relativePath:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(ILandroid/database/Cursor;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/database/Cursor;
    .param p3, "x2"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(ILandroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 91
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(ILandroid/database/Cursor;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$1;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>()V

    return-void
.end method
