/*
  This file is part of Shuriken Beat Slicer.

  Copyright (C) 2014 Andrew M Taylor <a.m.taylor303@gmail.com>

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program. If not, see <https://www.gnu.org/licenses/>
  or write to the Free Software Foundation, Inc., 51 Franklin Street,
  Fifth Floor, Boston, MA  02110-1301, USA.

*/

#ifndef WAVEGRAPHICSVIEW_H
#define WAVEGRAPHICSVIEW_H

#include <QGraphicsView>
#include <QGraphicsScene>
#include <QResizeEvent>
#include "waveformitem.h"
#include "slicepointitem.h"
#include "samplebuffer.h"


class WaveGraphicsView : public QGraphicsView
{
    Q_OBJECT

public:
    enum InteractionMode { MOVE_ITEMS, SELECT_ITEMS };

    WaveGraphicsView( QWidget* parent = NULL );

    // Creates a new waveform item and returns a shared pointer to it
    SharedWaveformItem createWaveform( const SharedSampleBuffer sampleBuffer );

    // Creates new waveform items and returns a list of shared pointers to them
    QList<SharedWaveformItem> createWaveforms( const SharedSampleBuffer sampleBuffer,
                                               const QList<SharedSampleRange> sampleRangeList );

    // Create a new waveform item by joining several waveform items together. The new item's start frame,
    // order position and scene position will be the same as the first item in the list. The new item's
    // width and no. of frames will be the sum of the widths and no. of frames of all items in the list
    SharedWaveformItem joinWaveforms( const QList<int> orderPositions );

    // Splits a waveform item that has been created with 'joinWaveforms()'
    QList<SharedWaveformItem> splitWaveform( const int orderPos );

    void moveWaveforms( const QList<int> oldOrderPositions, const int numPlacesMoved );

    QList<int> getSelectedWaveformsOrderPositions() const;

    SharedWaveformItem getWaveformAt( const int orderPos ) const;

    SharedSlicePointItem createSlicePoint( const int frameNum );
    void addSlicePoint( const SharedSlicePointItem slicePoint );
    void deleteSlicePoint( const SharedSlicePointItem slicePointItem );
    void moveSlicePoint( const SharedSlicePointItem slicePointItem, const int newFrameNum );
    SharedSlicePointItem getSelectedSlicePoint();
    void hideSlicePoints();
    void showSlicePoints();
    QList<int> getSlicePointFrameNumList();

    void selectNone();
    void selectAll();

    void stretch( const qreal ratio, const int newTotalNumFrames );

    void clearAll();
    void clearWaveform();

    qreal getScenePosX( const int frameNum ) const;
    int getFrameNum( qreal scenePosX ) const;

    void zoomIn();
    void zoomOut();
    void zoomOriginal();

    void forceRedraw();

    void setInteractionMode( const InteractionMode mode );

protected:
    void resizeEvent( QResizeEvent* event );

private:
    void scaleSlicePointItems( const qreal newXScaleFactor );

    QList<SharedWaveformItem> mWaveformItemList;
    QList<SharedSlicePointItem> mSlicePointItemList;
    int mNumFrames;
    qreal mCurrentStretchRatio;

signals:
    void slicePointOrderChanged( const SharedSlicePointItem slicePoint, const int oldFrameNum, const int newFrameNum );
    void minDetailLevelReached();
    void maxDetailLevelReached();

private slots:
    // 'oldOrderPositions' is assumed to be sorted
    // 'numPlacesMoved' should be negative if the items have moved left, or positive if the items have moved right
    void reorderWaveformItems( QList<int> oldOrderPositions, const int numPlacesMoved );

    void slideWaveformItemIntoPlace( const int orderPos );
    void reorderSlicePoints( SlicePointItem* const movedItem );
    void relayMaxDetailLevelReached();
};


#endif // WAVEGRAPHICSVIEW_H
