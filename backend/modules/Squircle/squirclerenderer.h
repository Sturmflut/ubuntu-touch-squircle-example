#ifndef SQUIRCLERENDERER_H
#define SQUIRCLERENDERER_H

#include <QtQuick/QQuickFramebufferObject>
#include <QtGui/QOpenGLShaderProgram>
#include <QtGui/QOpenGLFunctions>


class SquircleRenderer : public QQuickFramebufferObject::Renderer
{
public:
    SquircleRenderer();
    ~SquircleRenderer();

    QOpenGLFramebufferObject* createFramebufferObject(const QSize & size);
    void render();
    void synchronize(QQuickFramebufferObject * item);


private:
    QOpenGLShaderProgram *m_program;
    QOpenGLFramebufferObject* m_frameBufferObject;
};

#endif
