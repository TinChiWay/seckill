package org.seckill.exception;

import org.seckill.dto.SeckillExecution;

/**
 * @author TinChiWay
 * @date 2018/1/30
 */
public class SeckillCloseException extends SeckillException {
    public SeckillCloseException(String message) {
        super(message);
    }

    public SeckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }
}
