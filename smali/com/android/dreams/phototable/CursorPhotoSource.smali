.class public abstract Lcom/android/dreams/phototable/CursorPhotoSource;
.super Lcom/android/dreams/phototable/PhotoSource;
.source "CursorPhotoSource.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/dreams/phototable/PhotoSource;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;
    .param p3, "fallback"    # Lcom/android/dreams/phototable/PhotoSource;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/dreams/phototable/PhotoSource;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected donePaging(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
    .locals 1
    .param p1, "current"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    .line 76
    iget-object v0, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_0
    return-void
.end method

.method protected abstract findPosition(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
.end method

.method protected naturalNext(Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .locals 3
    .param p1, "current"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    .line 42
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/CursorPhotoSource;->openCursor(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/CursorPhotoSource;->findPosition(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V

    .line 46
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    iget v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 47
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/dreams/phototable/CursorPhotoSource;->unpackImageData(Landroid/database/Cursor;Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-result-object v0

    .line 51
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    .line 52
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    .line 54
    :cond_2
    return-object v0
.end method

.method protected naturalPrevious(Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .locals 3
    .param p1, "current"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    .line 59
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/CursorPhotoSource;->openCursor(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/CursorPhotoSource;->findPosition(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V

    .line 63
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    iget v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 64
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/dreams/phototable/CursorPhotoSource;->unpackImageData(Landroid/database/Cursor;Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-result-object v0

    .line 68
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    .line 69
    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    .line 71
    :cond_2
    return-object v0
.end method

.method protected abstract openCursor(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
.end method

.method protected abstract unpackImageData(Landroid/database/Cursor;Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
.end method
