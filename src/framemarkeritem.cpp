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

#include "framemarkeritem.h"
#include <QBrush>
#include <QGraphicsScene>
#include <QGraphicsSceneMouseEvent>
//#include <QDebug>


//==================================================================================================
// Public:

FrameMarkerItem::FrameMarkerItem( const QBrush brush, const QBrush selectedBrush, const qreal height, const Handle handle, QGraphicsItem* parent ) :
    QObject(),
    QGraphicsPolygonItem( parent ),
    m_handleWidth( 16.0 ),
    m_handleHeight( handle == HANDLE_TOP_BOTTOM ? 16.0 : 32.0 ),
    m_handle( handle ),
    m_selectedBrush( selectedBrush )
{
    setBrush( brush );
    setHeight( height );
    setZValue( ZValues::FRAME_MARKER );
    setFlags( ItemIsMovable | ItemIsSelectable | ItemSendsGeometryChanges );
}



void FrameMarkerItem::paint( QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget )
{
    Q_UNUSED( widget );

    painter->setPen( pen() );

    if ( option->state & QStyle::State_Selected )
    {
        painter->setBrush( m_selectedBrush );
    }
    else
    {
        painter->setBrush( brush() );
    }

    painter->drawPolygon( polygon(), fillRule() );
}



void FrameMarkerItem::setHeight( const qreal height )
{
    QPolygonF polygon;

    if ( m_handle == HANDLE_TOP_BOTTOM )
    {
        polygon << QPointF( -m_handleWidth * 0.5, 0.0 ) << QPointF( m_handleWidth * 0.5, 0.0 ) << QPointF( 0.0, m_handleHeight )
                << QPointF( 0.0, height - m_handleHeight )
                << QPointF( -m_handleWidth * 0.5, height ) << QPointF( m_handleWidth * 0.5, height ) << QPointF( 0.0, height - m_handleHeight )
                << QPointF( 0.0, m_handleHeight );
    }
    else if ( m_handle == HANDLE_CENTRE_RIGHT )
    {
        polygon << QPointF( 0.0, 0.0 ) << QPointF( 0.0, (height * 0.5) - (m_handleHeight * 0.5) )
                << QPointF( m_handleWidth, height * 0.5 ) << QPointF( 0.0, (height * 0.5) + (m_handleHeight * 0.5) )
                << QPointF( 0.0, (height * 0.5) - (m_handleHeight * 0.5) ) << QPointF( 0.0, height );
    }
    else if ( m_handle == HANDLE_CENTRE_LEFT )
    {
        polygon << QPointF( 0.0, 0.0 ) << QPointF( 0.0, (height * 0.5) - (m_handleHeight * 0.5) )
                << QPointF( -m_handleWidth, height * 0.5 ) << QPointF( 0.0, (height * 0.5) + (m_handleHeight * 0.5) )
                << QPointF( 0.0, (height * 0.5) - (m_handleHeight * 0.5) ) << QPointF( 0.0, height );
    }

    setPolygon( polygon );
}



//==================================================================================================
// Protected:

QVariant FrameMarkerItem::itemChange( GraphicsItemChange change, const QVariant &value )
{
    // Keep FrameMarkerItem within bounds of scene rect
    if ( change == ItemPositionChange && scene() != NULL )
    {
        QPointF newPos = value.toPointF();
        const QRectF sceneRect = scene()->sceneRect();

        if ( ! sceneRect.contains( newPos ) )
        {
            newPos.setX
            (
                    qMin( sceneRect.right() - 1, qMax( newPos.x(), sceneRect.left() ) )
            );
        }
        newPos.setY( 0.0 );

        return newPos;
    }

    return QGraphicsItem::itemChange( change, value );
}



void FrameMarkerItem::mousePressEvent( QGraphicsSceneMouseEvent* event )
{
    // Always unset the Ctrl-key modifier to prevent multiple frame marker items from being selected
    const Qt::KeyboardModifiers modifiers = event->modifiers() & ~Qt::ControlModifier;
    event->setModifiers( modifiers );

    QGraphicsItem::mousePressEvent( event );
}