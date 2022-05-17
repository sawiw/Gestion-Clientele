<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Client
 *
 * @ORM\Table(name="client")
 * @ORM\Entity
 */
class Client
{
    /**
     * @var int
     *
     * @ORM\Column(name="numclient", type="smallint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="client_numclient_seq", allocationSize=1, initialValue=1)
     */
    private $numclient;

    /**
     * @var string|null
     *
     * @ORM\Column(name="nomclient", type="text", nullable=true)
     */
    private $nomclient;

    /**
     * @var string|null
     *
     * @ORM\Column(name="prenomclient", type="text", nullable=true)
     */
    private $prenomclient;

    /**
     * @var string|null
     *
     * @ORM\Column(name="telclient", type="string", length=10, nullable=true)
     */
    private $telclient;

    public function getNumclient(): ?int
    {
        return $this->numclient;
    }

    public function getNomclient(): ?string
    {
        return $this->nomclient;
    }

    public function setNomclient(?string $nomclient): self
    {
        $this->nomclient = $nomclient;

        return $this;
    }

    public function getPrenomclient(): ?string
    {
        return $this->prenomclient;
    }

    public function setPrenomclient(?string $prenomclient): self
    {
        $this->prenomclient = $prenomclient;

        return $this;
    }

    public function getTelclient(): ?string
    {
        return $this->telclient;
    }

    public function setTelclient(?string $telclient): self
    {
        $this->telclient = $telclient;

        return $this;
    }


}
