package org.seckill.exception;

/**
 * @author TinChiWay
 * @date 2018/1/30
 */
public class SeckillException extends RuntimeException {
    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}
